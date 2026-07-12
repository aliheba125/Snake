.class public Lcom/snake/helper/InternalWebBrowser$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snake/helper/InternalWebBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snake/helper/InternalWebBrowser;


# direct methods
.method public constructor <init>(Lcom/snake/helper/InternalWebBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1, p2}, Lcom/snake/helper/InternalWebBrowser;->n(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1, p2}, Lcom/snake/helper/InternalWebBrowser;->h(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->k(Lcom/snake/helper/InternalWebBrowser;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    .line 6
    invoke-static {v0, p3}, Lcom/snake/helper/InternalWebBrowser;->m(Lcom/snake/helper/InternalWebBrowser;I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p3, p1, p2}, Lcom/snake/helper/InternalWebBrowser;->l(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string p3, "Page not available"

    invoke-static {v0, p3, p1, p2}, Lcom/snake/helper/InternalWebBrowser;->l(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedSslError "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "Your connection isn\'t private"

    const-string v0, "This site\'s security certificate isn\'t trusted."

    invoke-static {p1, p3, v0, p2}, Lcom/snake/helper/InternalWebBrowser;->l(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRenderProcessGone crashed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->g(Lcom/snake/helper/InternalWebBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->g(Lcom/snake/helper/InternalWebBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p2}, Lcom/snake/helper/InternalWebBrowser;->g(Lcom/snake/helper/InternalWebBrowser;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->g(Lcom/snake/helper/InternalWebBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/snake/helper/InternalWebBrowser;->i(Lcom/snake/helper/InternalWebBrowser;Landroid/webkit/WebView;)V

    :cond_1
    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    const-string p2, "The page ran out of memory or the renderer stopped."

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->e(Lcom/snake/helper/InternalWebBrowser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page crashed"

    invoke-static {p1, v1, p2, v0}, Lcom/snake/helper/InternalWebBrowser;->l(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/snake/helper/InternalWebBrowser;->j(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$a;->a:Lcom/snake/helper/InternalWebBrowser;

    .line 2
    invoke-static {p1, p2}, Lcom/snake/helper/InternalWebBrowser;->j(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
