.class public final Landroidx/appcompat/view/menu/kx1;
.super Landroidx/appcompat/view/menu/vs1;
.source "SourceFile"


# instance fields
.field public final l:Landroidx/appcompat/view/menu/o82;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;-><init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/vs1;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kx1;->n:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    return-object p0
.end method


# virtual methods
.method public final A(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    new-instance p3, Landroidx/appcompat/view/menu/jy1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/appcompat/view/menu/jy1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C1(Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/nx1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/nx1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E1(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)[B
    .locals 9

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->f0()Landroidx/appcompat/view/menu/mt1;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v4

    new-instance v5, Landroidx/appcompat/view/menu/py1;

    invoke-direct {v5, p0, p1, p2}, Landroidx/appcompat/view/menu/py1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/jw1;->B(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    invoke-static {p2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v5, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v5

    invoke-interface {v5}, Landroidx/appcompat/view/menu/cc;->c()J

    move-result-wide v5

    div-long/2addr v5, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/o82;->f0()Landroidx/appcompat/view/menu/mt1;

    move-result-object v7

    iget-object v8, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v8, v0}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    invoke-static {p2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->f0()Landroidx/appcompat/view/menu/mt1;

    move-result-object v2

    iget-object p1, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v1, v2, p2, p1, v0}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final F0(Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/hy1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/hy1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jw1;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/jw1;->G(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G0(Landroid/os/Bundle;Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object p2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/ix1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/appcompat/view/menu/ix1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I(Landroidx/appcompat/view/menu/if1;)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/if1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/if1;-><init>(Landroidx/appcompat/view/menu/if1;)V

    new-instance p1, Landroidx/appcompat/view/menu/vx1;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/vx1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/if1;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L0(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/ny1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/ny1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final P1(Landroidx/appcompat/view/menu/cb2;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o82;->R(Landroidx/appcompat/view/menu/cb2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/hg1;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/menu/fy1;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/fy1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/jw1;->B(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/hg1;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    iget-object p1, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Failed to get consent. appId"

    invoke-virtual {v2, v3, p1, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/appcompat/view/menu/hg1;

    invoke-direct {p1, v1}, Landroidx/appcompat/view/menu/hg1;-><init>(Landroid/os/Bundle;)V

    return-object p1

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/hg1;

    invoke-direct {p1, v1}, Landroidx/appcompat/view/menu/hg1;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final S(Landroidx/appcompat/view/menu/cb2;)V
    .locals 2

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/by1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/by1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T(Landroidx/appcompat/view/menu/cb2;Z)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/zy1;

    invoke-direct {v2, p0, v0}, Landroidx/appcompat/view/menu/zy1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/z92;

    if-nez p2, :cond_1

    iget-object v3, v2, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/x92;->H0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, Landroidx/appcompat/view/menu/v92;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/v92;-><init>(Landroidx/appcompat/view/menu/z92;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    invoke-virtual {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final V1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Landroidx/appcompat/view/menu/rx1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/rx1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/dy1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/dy1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/ly1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/ly1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i2(Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/mx1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/mx1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jw1;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m1(Ljava/lang/String;Ljava/lang/String;ZLandroidx/appcompat/view/menu/cb2;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object v0, p4, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/tx1;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/appcompat/view/menu/tx1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/z92;

    if-nez p3, :cond_1

    iget-object v1, v0, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/x92;->H0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Landroidx/appcompat/view/menu/v92;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/v92;-><init>(Landroidx/appcompat/view/menu/z92;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    iget-object p3, p4, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p4, p3, p1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final o(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    new-instance v0, Landroidx/appcompat/view/menu/if1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/if1;-><init>(Landroidx/appcompat/view/menu/if1;)V

    iget-object p1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    iput-object p1, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    new-instance p1, Landroidx/appcompat/view/menu/px1;

    invoke-direct {p1, p0, v0, p2}, Landroidx/appcompat/view/menu/px1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/kx1;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o0(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object p3, p3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/xx1;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/appcompat/view/menu/xx1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final r0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/zx1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zx1;-><init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/z92;

    if-nez p4, :cond_1

    iget-object v1, v0, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/x92;->H0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Landroidx/appcompat/view/menu/v92;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/v92;-><init>(Landroidx/appcompat/view/menu/z92;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :goto_2
    iget-object p3, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p3

    const-string p4, "Failed to get user properties as. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/kx1;->x2(Landroidx/appcompat/view/menu/cb2;Z)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/bz1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/appcompat/view/menu/bz1;-><init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get trigger URIs. appId"

    invoke-virtual {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u2(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/lg1;->h0(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final v2(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->m:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/h31;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/gy;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/gy;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/gy;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/view/menu/kx1;->m:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->m:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->n:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p2, v0, p1}, Landroidx/appcompat/view/menu/fy;->i(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Landroidx/appcompat/view/menu/kx1;->n:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "Unknown calling package name \'%s\'."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/oi1;
    .locals 8

    iget-object p2, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-string v0, "_cmp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ei1;->d()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    const-string v0, "_cis"

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrer broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "referrer API"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/oi1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroidx/appcompat/view/menu/oi1;

    const-string v3, "_cmpx"

    iget-object v4, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    iget-object v5, p1, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iget-wide v6, p1, Landroidx/appcompat/view/menu/oi1;->p:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final x2(Landroidx/appcompat/view/menu/cb2;Z)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/kx1;->v2(Ljava/lang/String;Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/x92;->j0(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final y2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/rv1;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "EES config found for"

    iget-object v2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/rv1;->j:Landroidx/appcompat/view/menu/pa0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/pa0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/lh1;

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "EES not loaded for"

    iget-object v2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ei1;->k()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/i92;->O(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/nz1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    :cond_3
    new-instance v3, Landroidx/appcompat/view/menu/hf1;

    iget-wide v4, p1, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-direct {v3, v2, v4, v5, v1}, Landroidx/appcompat/view/menu/hf1;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/lh1;->d(Landroidx/appcompat/view/menu/hf1;)Z

    move-result v1
    :try_end_0
    .catch Landroidx/appcompat/view/menu/pk1; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh1;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "EES edited event"

    iget-object p1, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh1;->a()Landroidx/appcompat/view/menu/cf1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cf1;->d()Landroidx/appcompat/view/menu/hf1;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/i92;->D(Landroidx/appcompat/view/menu/hf1;)Landroidx/appcompat/view/menu/oi1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh1;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh1;->a()Landroidx/appcompat/view/menu/cf1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cf1;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/hf1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hf1;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EES logging created event"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/i92;->D(Landroidx/appcompat/view/menu/hf1;)Landroidx/appcompat/view/menu/oi1;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_2

    :cond_6
    return-void

    :catch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    iget-object v2, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-string v3, "EES error. appId, eventName"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-string v2, "EES was not applied to event"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kx1;->z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void
.end method

.method public final z2(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kx1;->l:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/o82;->q(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void
.end method
