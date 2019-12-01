#include "FBO.hpp"

FBO::FBO(){
    glGenFramebuffers(1,&fbo);
}

FBO::~FBO(){
    for (int i = 0; i < textures.size(); i++){
        unsigned int tex = textures[i];
        glDeleteTextures(1,&tex);
    }
    glDeleteRenderbuffers(1,&depth);
    glDeleteFramebuffers(1,&fbo);
}

void FBO::bind(){
    glBindFramebuffer(GL_FRAMEBUFFER, fbo);
}

void FBO::unbind(){
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}

void FBO::clear(){
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void FBO::addTexture(int index, int width, int height, bool alpha){
    bind();

    unsigned int tex;
    glGenTextures(1,&tex);
    glBindTexture(GL_TEXTURE_2D,tex);

    if (alpha){
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,width,height,0,GL_RGBA,GL_UNSIGNED_BYTE,NULL);
    }else{
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,width,height,0,GL_RGB,GL_UNSIGNED_BYTE, NULL);
    }

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0+index, GL_TEXTURE_2D, tex, 0);

    textures.push_back(tex);
    indicies.push_back(index);

    unbind();
}

void FBO::addHighPTexture(int index, int width, int height, bool alpha){
    bind();

    unsigned int tex;
    glGenTextures(1,&tex);
    glBindTexture(GL_TEXTURE_2D,tex);

    if (alpha){
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA16F,width,height,0,GL_RGBA,GL_FLOAT,NULL);
    }else{
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGB16F,width,height,0,GL_RGB,GL_FLOAT, NULL);
    }

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0+index, GL_TEXTURE_2D, tex, 0);

    textures.push_back(tex);
    indicies.push_back(index);

    unbind();
}

void FBO::bindTexture(int index, int tex){
    glActiveTexture(GL_TEXTURE0+index);
    glBindTexture(GL_TEXTURE_2D, textures[tex]);
}

void FBO::bindDepthTexture(int index){
    GLuint tex = 0;
    glGenTextures(1, &tex);
    glBindTexture( GL_TEXTURE_2D, tex);
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,depthWidth,depthHeight,0,GL_RGB,GL_UNSIGNED_BYTE, NULL);
    glBindTexture(GL_TEXTURE_2D, tex);

        glReadBuffer(GL_BACK); // Ensure we are reading from the back buffer.
    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT, 0, 0, depthWidth, depthHeight, 0);

    glActiveTexture(GL_TEXTURE0+index);
    glBindTexture(GL_TEXTURE_2D,tex);

    textures.push_back(tex);
}

void FBO::addDepthBuffer(int width, int height){
    bind();

    depthWidth = width; depthHeight = height;
    glGenRenderbuffers(1, &depth);
    glBindRenderbuffer(GL_RENDERBUFFER, depth);
    glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, width, height);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, depth);

    unbind();
}

void FBO::attachTextures(){
    bind();

    unsigned int attachments[indicies.size()];
    for (int i = 0; i < indicies.size(); i++){
        attachments[i] = GL_COLOR_ATTACHMENT0 + indicies[i];
    }

    glDrawBuffers(indicies.size(), attachments);

    unbind();
}

void FBO::copyDepthBuffer(FBO* target){
    glBindFramebuffer(GL_READ_FRAMEBUFFER, fbo);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, target->getFBOID()); // write to default framebuffer
    glBlitFramebuffer(0, 0, depthWidth, depthHeight, 0, 0, depthWidth, depthHeight, GL_DEPTH_BUFFER_BIT, GL_NEAREST);
    target->bind();
}

void FBO::copyDepthBuffer(){
    glBindFramebuffer(GL_READ_FRAMEBUFFER, fbo);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
    glBlitFramebuffer(0, 0, depthWidth,depthHeight, 0, 0, depthWidth,depthHeight, GL_DEPTH_BUFFER_BIT, GL_NEAREST);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}
