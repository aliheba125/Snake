.class public Lcom/snake/helper/InternalWebBrowser$b;
.super Landroid/webkit/WebChromeClient;
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

    iput-object p1, p0, Lcom/snake/helper/InternalWebBrowser$b;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$b;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->f(Lcom/snake/helper/InternalWebBrowser;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$b;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->f(Lcom/snake/helper/InternalWebBrowser;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser$b;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {p1}, Lcom/snake/helper/InternalWebBrowser;->f(Lcom/snake/helper/InternalWebBrowser;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
