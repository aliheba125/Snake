.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a72;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/s62;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/job/JobParameters;Z)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final c()Landroidx/appcompat/view/menu/s62;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Landroidx/appcompat/view/menu/s62;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/s62;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/s62;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Landroidx/appcompat/view/menu/s62;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Landroidx/appcompat/view/menu/s62;

    return-object v0
.end method

.method public final e(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Landroidx/appcompat/view/menu/s62;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s62;->c()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Landroidx/appcompat/view/menu/s62;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s62;->h()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Landroidx/appcompat/view/menu/s62;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s62;->i(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Landroidx/appcompat/view/menu/s62;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s62;->g(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->c()Landroidx/appcompat/view/menu/s62;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s62;->k(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
