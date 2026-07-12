.class public abstract Lcom/snake/helper/ProxyJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snake/helper/ProxyJobService$P3;,
        Lcom/snake/helper/ProxyJobService$P2;,
        Lcom/snake/helper/ProxyJobService$P1;,
        Lcom/snake/helper/ProxyJobService$P0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s3;->c(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s3;->d()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s3;->e()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s3;->f(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s3;->g(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    invoke-static {}, Landroidx/appcompat/view/menu/s3;->a()Landroidx/appcompat/view/menu/s3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s3;->h(I)V

    return-void
.end method
