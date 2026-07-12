.class public final Landroidx/appcompat/view/menu/t52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic r:Landroidx/appcompat/view/menu/h42;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h42;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t52;->r:Landroidx/appcompat/view/menu/h42;

    iput-object p2, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroidx/appcompat/view/menu/t52;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/t52;->o:Ljava/lang/String;

    iput-object p5, p0, Landroidx/appcompat/view/menu/t52;->p:Ljava/lang/String;

    iput-object p6, p0, Landroidx/appcompat/view/menu/t52;->q:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->B(Landroidx/appcompat/view/menu/h42;)Landroidx/appcompat/view/menu/xs1;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Landroidx/appcompat/view/menu/t52;->n:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/t52;->o:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/t52;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->q:Landroidx/appcompat/view/menu/cb2;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/appcompat/view/menu/t52;->o:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/t52;->p:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/t52;->q:Landroidx/appcompat/view/menu/cb2;

    invoke-interface {v1, v3, v4, v5}, Landroidx/appcompat/view/menu/xs1;->o0(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/appcompat/view/menu/t52;->n:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/t52;->o:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/t52;->p:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroidx/appcompat/view/menu/xs1;->Z1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-static {v1}, Landroidx/appcompat/view/menu/h42;->m0(Landroidx/appcompat/view/menu/h42;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_4
    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->r:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v4, p0, Landroidx/appcompat/view/menu/t52;->n:Ljava/lang/String;

    invoke-static {v4}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/t52;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/t52;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
