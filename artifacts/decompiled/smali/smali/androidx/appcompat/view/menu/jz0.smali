.class public abstract Landroidx/appcompat/view/menu/jz0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/mj0;->g()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->f(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/jf1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/jf1;-><init>(Landroidx/appcompat/view/menu/ef1;)V

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/jz0;->g(Landroidx/appcompat/view/menu/zy0;Landroidx/appcompat/view/menu/nf1;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jf1;->b()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->f(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/appcompat/view/menu/zy0;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/mj0;->g()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->f(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/jf1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/jf1;-><init>(Landroidx/appcompat/view/menu/ef1;)V

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/jz0;->g(Landroidx/appcompat/view/menu/zy0;Landroidx/appcompat/view/menu/nf1;)V

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jf1;->e(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->f(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/cg2;

    invoke-direct {v1, v0, p1}, Landroidx/appcompat/view/menu/cg2;-><init>(Landroidx/appcompat/view/menu/nf2;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Landroidx/appcompat/view/menu/zy0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/nf2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf2;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/nf2;->p(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zy0;->h()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Landroidx/appcompat/view/menu/zy0;Landroidx/appcompat/view/menu/nf1;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gz0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/zy0;->e(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/mg0;)Landroidx/appcompat/view/menu/zy0;

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/zy0;->d(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/ig0;)Landroidx/appcompat/view/menu/zy0;

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/zy0;->a(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/fg0;)Landroidx/appcompat/view/menu/zy0;

    return-void
.end method
