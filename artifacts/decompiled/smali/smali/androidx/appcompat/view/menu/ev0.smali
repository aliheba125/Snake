.class public Landroidx/appcompat/view/menu/ev0;
.super Landroidx/appcompat/view/menu/g00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final n:Landroidx/appcompat/view/menu/ev0;


# instance fields
.field public final l:Ljava/util/Map;

.field public final m:Landroidx/appcompat/view/menu/s8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ev0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ev0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ev0;->n:Landroidx/appcompat/view/menu/ev0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/g00$a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ev0;->l:Ljava/util/Map;

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/s8;->e(Landroidx/appcompat/view/menu/x6;)Landroidx/appcompat/view/menu/s8;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ev0;->m:Landroidx/appcompat/view/menu/s8;

    return-void
.end method

.method public static h()Landroidx/appcompat/view/menu/ev0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ev0;->n:Landroidx/appcompat/view/menu/ev0;

    return-object v0
.end method


# virtual methods
.method public C(Ljava/lang/String;I)Landroidx/appcompat/view/menu/aq0;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/a7;->g(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/view/menu/aq0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/aq0;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yj0;

    iget v2, v0, Landroidx/appcompat/view/menu/yj0;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    iput-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v0, p2, Landroidx/appcompat/view/menu/aq0;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public D1(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .locals 1

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p3

    iget-object v0, p3, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v0

    :try_start_0
    iget-object p3, p3, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {p3, p1, p2, p4}, Landroidx/appcompat/view/menu/b1;->n(Landroid/content/Intent;Ljava/lang/String;I)V

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .locals 1

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p1

    iget-object v0, p1, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/b1;->p(Landroid/os/IBinder;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K(Landroidx/appcompat/view/menu/wh0;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ev0;->m:Landroidx/appcompat/view/menu/s8;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s8;->b(Landroidx/appcompat/view/menu/wh0;)V

    return-void
.end method

.method public L1(Landroid/os/IBinder;I)V
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/b1;->q(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public M(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    iget v0, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/r1;->q(ILandroid/os/IBinder;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N0(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/p3;
    .locals 6

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/a7;->u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yj0;->a()Landroidx/appcompat/view/menu/p3;

    move-result-object p1

    return-object p1
.end method

.method public R1(Landroid/os/IBinder;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/vh0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/vh0;->b:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S0(Ljava/lang/String;I)Landroidx/appcompat/view/menu/bq0;
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/b1;->h(Ljava/lang/String;I)Landroidx/appcompat/view/menu/bq0;

    move-result-object p1

    return-object p1
.end method

.method public T1(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    iget v0, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/r1;->p(ILandroid/os/IBinder;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public X(Landroid/os/IBinder;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/r1;->j(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y1(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/b1;->o(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z0(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 11

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/view/menu/r1;->v(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d0(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/b1;->l(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/a7;->t(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public i(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/a7;->k(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/a7;->u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/h00;->i(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ev0;->m:Landroidx/appcompat/view/menu/s8;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s8;->f()V

    return-void
.end method

.method public final k(I)Landroidx/appcompat/view/menu/p41;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ev0;->l:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ev0;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/p41;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/p41;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/p41;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/ev0;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/b1;->j(Landroid/content/Intent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroidx/appcompat/view/menu/r1;->n(Landroidx/appcompat/view/menu/yj0;ILandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m2(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2, p3}, Landroidx/appcompat/view/menu/x6;->b0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p3}, Landroidx/appcompat/view/menu/a7;->d(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/h00;->N()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p2
.end method

.method public n0(Landroid/content/Intent;I)V
    .locals 11

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/view/menu/r1;->v(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Landroid/os/IBinder;I)I
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/vh0;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/appcompat/view/menu/vh0;->a:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q2(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/r1;->i(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r1(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    iget v0, v0, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/r1;->o(ILandroid/os/IBinder;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/b1;->c(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u1(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p4

    iget-object v0, p4, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroidx/appcompat/view/menu/vh0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/vh0;-><init>()V

    iput p3, v1, Landroidx/appcompat/view/menu/vh0;->a:I

    iput-object p2, v1, Landroidx/appcompat/view/menu/vh0;->b:Ljava/lang/String;

    iget-object p2, p4, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v1(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/r1;->s(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x1(Landroid/content/Intent;Landroidx/appcompat/view/menu/wh0;I)V
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroidx/appcompat/view/menu/x6;->b0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wh0;->a()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ev0;->m:Landroidx/appcompat/view/menu/s8;

    invoke-virtual {v1, p2}, Landroidx/appcompat/view/menu/s8;->d(Landroidx/appcompat/view/menu/wh0;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, p3}, Landroidx/appcompat/view/menu/a7;->d(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/appcompat/view/menu/wn0;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/wn0;-><init>()V

    iput-object p1, v3, Landroidx/appcompat/view/menu/wn0;->m:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, v3, Landroidx/appcompat/view/menu/wn0;->n:Landroid/content/pm/ActivityInfo;

    iput-object p2, v3, Landroidx/appcompat/view/menu/wn0;->o:Landroidx/appcompat/view/menu/wh0;

    iget-object v1, v2, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    invoke-interface {v1, v3}, Landroidx/appcompat/view/menu/h00;->z(Landroidx/appcompat/view/menu/wn0;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public y(Landroid/content/Intent;I)Landroidx/appcompat/view/menu/i31;
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ev0;->k(I)Landroidx/appcompat/view/menu/p41;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/b1;->k(Landroid/content/Intent;)Landroidx/appcompat/view/menu/i31;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
