.class public abstract Lcom/snake/helper/ProxyPendingActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snake/helper/ProxyPendingActivity$P3;,
        Lcom/snake/helper/ProxyPendingActivity$P2;,
        Lcom/snake/helper/ProxyPendingActivity$P1;,
        Lcom/snake/helper/ProxyPendingActivity$P0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/ql0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ql0;

    move-result-object p1

    iget-object v0, p1, Landroidx/appcompat/view/menu/ql0;->b:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p1, Landroidx/appcompat/view/menu/ql0;->b:Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->H2()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p1, Landroidx/appcompat/view/menu/ql0;->b:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
