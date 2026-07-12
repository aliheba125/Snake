.class public final Landroidx/appcompat/view/menu/n42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic n:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic o:Landroid/os/Bundle;

.field public final synthetic p:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/n42;->p:Landroidx/appcompat/view/menu/h42;

    iput-object p2, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroidx/appcompat/view/menu/n42;->n:Landroidx/appcompat/view/menu/cb2;

    iput-object p4, p0, Landroidx/appcompat/view/menu/n42;->o:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->p:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to get trigger URIs; not connected to service"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/n42;->n:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/appcompat/view/menu/n42;->n:Landroidx/appcompat/view/menu/cb2;

    iget-object v4, p0, Landroidx/appcompat/view/menu/n42;->o:Landroid/os/Bundle;

    invoke-interface {v1, v3, v4}, Landroidx/appcompat/view/menu/xs1;->s(Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->p:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->m0(Landroidx/appcompat/view/menu/h42;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_4
    iget-object v2, p0, Landroidx/appcompat/view/menu/n42;->p:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Failed to get trigger URIs; remote exception"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/n42;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
