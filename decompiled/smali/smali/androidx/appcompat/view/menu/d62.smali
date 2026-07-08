.class public final Landroidx/appcompat/view/menu/d62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroidx/appcompat/view/menu/z7$a;
.implements Landroidx/appcompat/view/menu/z7$b;


# instance fields
.field public volatile l:Z

.field public volatile m:Landroidx/appcompat/view/menu/qt1;

.field public final synthetic n:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic c(Landroidx/appcompat/view/menu/d62;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/z7;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/z7;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_2
    new-instance v1, Landroidx/appcompat/view/menu/qt1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Landroidx/appcompat/view/menu/qt1;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/z7$a;Landroidx/appcompat/view/menu/z7$b;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z7;->q()V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-static {v2}, Landroidx/appcompat/view/menu/h42;->i0(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/d62;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Landroidx/appcompat/view/menu/hf;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z7;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z7;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z7;->n()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    return-void
.end method

.method public final h(I)V
    .locals 1

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->d(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/l62;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l62;-><init>(Landroidx/appcompat/view/menu/d62;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    iget-object v0, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->E()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/j62;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/j62;-><init>(Landroidx/appcompat/view/menu/d62;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->d(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/z7;->D()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/xs1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/f62;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/f62;-><init>(Landroidx/appcompat/view/menu/d62;Landroidx/appcompat/view/menu/xs1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d62;->m:Landroidx/appcompat/view/menu/qt1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->d(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d62;->l:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/xs1;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/appcompat/view/menu/xs1;

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/appcompat/view/menu/bt1;

    invoke-direct {v1, p2}, Landroidx/appcompat/view/menu/bt1;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_3

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d62;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/h42;->i0(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/d62;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/hf;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/b62;

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/view/menu/b62;-><init>(Landroidx/appcompat/view/menu/d62;Landroidx/appcompat/view/menu/xs1;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/h62;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/h62;-><init>(Landroidx/appcompat/view/menu/d62;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method
