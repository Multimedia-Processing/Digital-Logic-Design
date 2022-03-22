# video play

* http://dranger.com/ffmpeg/ffmpeg.html (舊版，don't work)
* https://github.com/rambodrahmani/ffmpeg-video-player (新版)


## compile fail in msys2/mingw64

```
Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/_case/videoplay/src
$ ./msys2build.sh
tutorial01.c: In function ‘main’:
tutorial01.c:80:3: warning: ‘av_register_all’ is deprecated [-Wdeprecated-declarations]
   80 |   av_register_all();
      |   ^~~~~~~~~~~~~~~
In file included from tutorial01.c:27:
/mingw64/include/libavformat/avformat.h:1955:6: note: declared here
 1955 | void av_register_all(void);
      |      ^~~~~~~~~~~~~~~
tutorial01.c:96:5: warning: ‘codec’ is deprecated [-Wdeprecated-declarations]
   96 |     if(pFormatCtx->streams[i]->codec->codec_type==AVMEDIA_TYPE_VIDEO) {
      |     ^~
In file included from tutorial01.c:27:
/mingw64/include/libavformat/avformat.h:888:21: note: declared here
  888 |     AVCodecContext *codec;
      |                     ^~~~~
tutorial01.c:104:3: warning: ‘codec’ is deprecated [-Wdeprecated-declarations]
  104 |   pCodecCtxOrig=pFormatCtx->streams[videoStream]->codec;
      |   ^~~~~~~~~~~~~
In file included from tutorial01.c:27:
/mingw64/include/libavformat/avformat.h:888:21: note: declared here
  888 |     AVCodecContext *codec;
      |                     ^~~~~
tutorial01.c:113:3: warning: ‘avcodec_copy_context’ is deprecated [-Wdeprecated-declarations]
  113 |   if(avcodec_copy_context(pCodecCtx, pCodecCtxOrig) != 0) {
      |   ^~
In file included from tutorial01.c:26:
/mingw64/include/libavcodec/avcodec.h:2843:5: note: declared here
 2843 | int avcodec_copy_context(AVCodecContext *dest, const AVCodecContext *src);
      |     ^~~~~~~~~~~~~~~~~~~~
tutorial01.c:131:3: warning: ‘avpicture_get_size’ is deprecated [-Wdeprecated-declarations]
  131 |   numBytes=avpicture_get_size(PIX_FMT_RGB24, pCodecCtx->width,
      |   ^~~~~~~~
In file included from tutorial01.c:26:
/mingw64/include/libavcodec/avcodec.h:3778:5: note: declared here
 3778 | int avpicture_get_size(enum AVPixelFormat pix_fmt, int width, int height);
      |     ^~~~~~~~~~~~~~~~~~
tutorial01.c:131:31: error: ‘PIX_FMT_RGB24’ undeclared (first use in this function); did you mean ‘AV_PIX_FMT_RGB24’?
  131 |   numBytes=avpicture_get_size(PIX_FMT_RGB24, pCodecCtx->width,
      |                               ^~~~~~~~~~~~~
      |                               AV_PIX_FMT_RGB24
tutorial01.c:131:31: note: each undeclared identifier is reported only once for each function it appears in
tutorial01.c:138:3: warning: ‘avpicture_fill’ is deprecated [-Wdeprecated-declarations]
  138 |   avpicture_fill((AVPicture *)pFrameRGB, buffer, PIX_FMT_RGB24,
      |   ^~~~~~~~~~~~~~
In file included from tutorial01.c:26:
/mingw64/include/libavcodec/avcodec.h:3763:5: note: declared here
 3763 | int avpicture_fill(AVPicture *picture, const uint8_t *ptr,
      |     ^~~~~~~~~~~~~~
tutorial01.c:160:7: warning: ‘avcodec_decode_video2’ is deprecated [-Wdeprecated-declarations]
  160 |       avcodec_decode_video2(pCodecCtx, pFrame, &frameFinished, &packet);
      |       ^~~~~~~~~~~~~~~~~~~~~
In file included from tutorial01.c:26:
/mingw64/include/libavcodec/avcodec.h:3096:5: note: declared here
 3096 | int avcodec_decode_video2(AVCodecContext *avctx, AVFrame *picture,
      |     ^~~~~~~~~~~~~~~~~~~~~
tutorial01.c:177:5: warning: ‘av_free_packet’ is deprecated [-Wdeprecated-declarations]
  177 |     av_free_packet(&packet);
      |     ^~~~~~~~~~~~~~
In file included from /mingw64/include/libavcodec/bsf.h:30,
                 from /mingw64/include/libavcodec/avcodec.h:44,
                 from tutorial01.c:26:
/mingw64/include/libavcodec/packet.h:569:6: note: declared here
  569 | void av_free_packet(AVPacket *pkt);

```
