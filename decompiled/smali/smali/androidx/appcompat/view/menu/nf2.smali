.class public final Landroidx/appcompat/view/menu/nf2;
.super Landroidx/appcompat/view/menu/zy0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/appcompat/view/menu/me2;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/zy0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/me2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/me2;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/fg0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v1, Landroidx/appcompat/view/menu/sw1;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/sw1;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/fg0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object p0
.end method

.method public final b(Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/gz0;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v2, Landroidx/appcompat/view/menu/a12;

    invoke-direct {v2, v0, p1}, Landroidx/appcompat/view/menu/a12;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v1, Landroidx/appcompat/view/menu/a12;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/a12;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/ig0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v1, Landroidx/appcompat/view/menu/e52;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/e52;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/ig0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/mg0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v1, Landroidx/appcompat/view/menu/p92;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/p92;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/mg0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object p0
.end method

.method public final f(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v2, Landroidx/appcompat/view/menu/rm1;

    invoke-direct {v2, p1, p2, v0}, Landroidx/appcompat/view/menu/rm1;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;Landroidx/appcompat/view/menu/nf2;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object v0
.end method

.method public final g(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v2, Landroidx/appcompat/view/menu/ir1;

    invoke-direct {v2, p1, p2, v0}, Landroidx/appcompat/view/menu/ir1;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;Landroidx/appcompat/view/menu/nf2;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object v0
.end method

.method public final h()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->u()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/cq0;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/cq0;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->u()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/cq0;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/cq0;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/nf2;->d:Z

    return v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/cy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    new-instance v2, Landroidx/appcompat/view/menu/kc2;

    invoke-direct {v2, p1, p2, v0}, Landroidx/appcompat/view/menu/kc2;-><init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/cy0;Landroidx/appcompat/view/menu/nf2;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/me2;->a(Landroidx/appcompat/view/menu/rd2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->w()V

    return-object v0
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->v()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nf2;->v()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/nf2;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final r(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/nf2;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/nf2;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->m(ZLjava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/nf2;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/gn;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/nf2;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/nf2;->b:Landroidx/appcompat/view/menu/me2;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/me2;->b(Landroidx/appcompat/view/menu/zy0;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
