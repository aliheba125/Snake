.class public Landroidx/appcompat/view/menu/j11;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/cd0;

.field public final c:Landroidx/appcompat/view/menu/ux;

.field public final d:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public g:Z

.field public final h:Landroidx/appcompat/view/menu/h11;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/appcompat/view/menu/j11;->i:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/h11;Landroidx/appcompat/view/menu/ux;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/j11;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j11;->g:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/j11;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Landroidx/appcompat/view/menu/j11;->b:Landroidx/appcompat/view/menu/cd0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/j11;->h:Landroidx/appcompat/view/menu/h11;

    iput-object p4, p0, Landroidx/appcompat/view/menu/j11;->c:Landroidx/appcompat/view/menu/ux;

    iput-object p5, p0, Landroidx/appcompat/view/menu/j11;->a:Landroid/content/Context;

    iput-object p6, p0, Landroidx/appcompat/view/menu/j11;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)Landroidx/appcompat/view/menu/j11;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/j11;->i(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)Landroidx/appcompat/view/menu/j11;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/appcompat/view/menu/zy0;)V
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-static {p0, v1, v2, v0}, Landroidx/appcompat/view/menu/jz0;->b(Landroidx/appcompat/view/menu/zy0;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public static e(Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Landroidx/appcompat/view/menu/zy0;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/i11;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/i11;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)V

    invoke-static {p4, v6}, Landroidx/appcompat/view/menu/jz0;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/ux;)Landroidx/appcompat/view/menu/j11;
    .locals 8

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/h11;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroidx/appcompat/view/menu/h11;

    move-result-object v3

    new-instance v7, Landroidx/appcompat/view/menu/j11;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/j11;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/h11;Landroidx/appcompat/view/menu/ux;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->c:Landroidx/appcompat/view/menu/ux;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/ux;->k(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/j11;->b(Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->c:Landroidx/appcompat/view/menu/ux;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/ux;->l(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/j11;->b(Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->h:Landroidx/appcompat/view/menu/h11;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h11;->b()Landroidx/appcompat/view/menu/g11;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j11;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(Landroidx/appcompat/view/menu/g11;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/bz0;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/bz0;->c(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Landroidx/appcompat/view/menu/g11;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x53

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, " succeeded."

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/j11;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown topic operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/j11;->d(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/j11;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsubscribe from topic: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/j11;->c(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/j11;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscribe to topic: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g11;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    return v4

    :goto_3
    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    throw p1

    :cond_8
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Topic operation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0
.end method

.method public l(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public declared-synchronized m(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j11;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j11;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/j11;->q(J)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j11;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j11;->n()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j11;->h:Landroidx/appcompat/view/menu/h11;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h11;->b()Landroidx/appcompat/view/menu/g11;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/j11;->g()Z

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j11;->k(Landroidx/appcompat/view/menu/g11;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/j11;->h:Landroidx/appcompat/view/menu/h11;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/h11;->d(Landroidx/appcompat/view/menu/g11;)Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j11;->j(Landroidx/appcompat/view/menu/g11;)V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public q(J)V
    .locals 10

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x1e

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Landroidx/appcompat/view/menu/j11;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v0, Landroidx/appcompat/view/menu/k11;

    iget-object v6, p0, Landroidx/appcompat/view/menu/j11;->a:Landroid/content/Context;

    iget-object v7, p0, Landroidx/appcompat/view/menu/j11;->b:Landroidx/appcompat/view/menu/cd0;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/k11;-><init>(Landroidx/appcompat/view/menu/j11;Landroid/content/Context;Landroidx/appcompat/view/menu/cd0;J)V

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/j11;->l(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j11;->m(Z)V

    return-void
.end method
