.class public abstract Lcom/snake/helper/ProxyService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snake/helper/ProxyService$P3;,
        Lcom/snake/helper/ProxyService$P2;,
        Lcom/snake/helper/ProxyService$P1;,
        Lcom/snake/helper/ProxyService$P0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->f(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->g(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x3;->h()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x3;->i()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/x3;->j(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->k(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->l(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
