#include "ShaderProgram.hpp"

#include <glm/gtc/type_ptr.hpp>

using namespace Engine;

ShaderProgram::ShaderProgram(const char* vPath, const char* fPath){
    programID = loadShader(vPath,fPath);
}

ShaderProgram::~ShaderProgram(){
    glDeleteProgram(programID);
}

void ShaderProgram::start(){
    glUseProgram(programID);
}

void ShaderProgram::remove(){
    glDeleteProgram(programID);
}

void ShaderProgram::setUniformVec3(glm::vec3 v, std::string uniformName){
    GLuint uniformID = glGetUniformLocation(programID, uniformName.c_str());
    glUniform3fv(uniformID, 1, &v[0]);
}

void ShaderProgram::setUniformMat4(glm::mat4 matrix, std::string uniformName){
    GLuint MatrixID = glGetUniformLocation(programID, uniformName.c_str());
    glUniformMatrix4fv(MatrixID, 1, GL_FALSE, glm::value_ptr(matrix));
}

void ShaderProgram::setUniformMat4Array(std::vector<glm::mat4> matrices, std::string uniformName){
    GLuint uniformID = glGetUniformLocation(programID, uniformName.c_str()); 
    glUniformMatrix4fv(uniformID, matrices.size(), GL_FALSE, glm::value_ptr(matrices[0]));
}

GLuint ShaderProgram::loadShader(const char* vPath, const char* fPath){
	GLuint VertexShaderID = glCreateShader(GL_VERTEX_SHADER);
	GLuint FragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);

	std::string VertexShaderCode;
	std::ifstream VertexShaderStream(vPath, std::ios::in);
	if(VertexShaderStream.is_open()){
		std::stringstream sstr;
		sstr << VertexShaderStream.rdbuf();
		VertexShaderCode = sstr.str();
		VertexShaderStream.close();
	}else{
		printf("Impossible to open %s. Are you in the right directory ? Don't forget to read the FAQ !\n", vPath);
		getchar();
		return 0;
	}

	std::string FragmentShaderCode;
	std::ifstream FragmentShaderStream(fPath, std::ios::in);
	if(FragmentShaderStream.is_open()){
		std::stringstream sstr;
		sstr << FragmentShaderStream.rdbuf();
		FragmentShaderCode = sstr.str();
		FragmentShaderStream.close();
	}

	GLint Result = GL_FALSE;
	int InfoLogLength;

	printf("Compiling shader : %s\n", vPath);
	char const * VertexSourcePointer = VertexShaderCode.c_str();
	glShaderSource(VertexShaderID, 1, &VertexSourcePointer , NULL);
	glCompileShader(VertexShaderID);

	glGetShaderiv(VertexShaderID, GL_COMPILE_STATUS, &Result);
	glGetShaderiv(VertexShaderID, GL_INFO_LOG_LENGTH, &InfoLogLength);
	if ( InfoLogLength > 0 ){
		std::vector<char> VertexShaderErrorMessage(InfoLogLength+1);
		glGetShaderInfoLog(VertexShaderID, InfoLogLength, NULL, &VertexShaderErrorMessage[0]);
		printf("%s\n", &VertexShaderErrorMessage[0]);
	}

	printf("Compiling shader : %s\n", fPath);
	char const * FragmentSourcePointer = FragmentShaderCode.c_str();
	glShaderSource(FragmentShaderID, 1, &FragmentSourcePointer , NULL);
	glCompileShader(FragmentShaderID);

	glGetShaderiv(FragmentShaderID, GL_COMPILE_STATUS, &Result);
	glGetShaderiv(FragmentShaderID, GL_INFO_LOG_LENGTH, &InfoLogLength);
	if ( InfoLogLength > 0 ){
		std::vector<char> FragmentShaderErrorMessage(InfoLogLength+1);
		glGetShaderInfoLog(FragmentShaderID, InfoLogLength, NULL, &FragmentShaderErrorMessage[0]);
		printf("%s\n", &FragmentShaderErrorMessage[0]);
	}

	printf("Linking program\n");
	GLuint ProgramID = glCreateProgram();
	glAttachShader(ProgramID, VertexShaderID);
	glAttachShader(ProgramID, FragmentShaderID);
	glLinkProgram(ProgramID);

	glGetProgramiv(ProgramID, GL_LINK_STATUS, &Result);
	glGetProgramiv(ProgramID, GL_INFO_LOG_LENGTH, &InfoLogLength);
	if ( InfoLogLength > 0 ){
		std::vector<char> ProgramErrorMessage(InfoLogLength+1);
		glGetProgramInfoLog(ProgramID, InfoLogLength, NULL, &ProgramErrorMessage[0]);
		printf("%s\n", &ProgramErrorMessage[0]);
	}

	glDetachShader(ProgramID, VertexShaderID);
	glDetachShader(ProgramID, FragmentShaderID);

	glDeleteShader(VertexShaderID);
	glDeleteShader(FragmentShaderID);

	return ProgramID;
}
