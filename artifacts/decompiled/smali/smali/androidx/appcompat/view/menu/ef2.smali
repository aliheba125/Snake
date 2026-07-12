.class public final Landroidx/appcompat/view/menu/ef2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Landroidx/appcompat/view/menu/ef2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Landroidx/appcompat/view/menu/q92;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/q92;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/q92;-><init>(Landroidx/appcompat/view/menu/ef2;Landroidx/appcompat/view/menu/j72;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ef2;->c:Landroidx/appcompat/view/menu/q92;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ef2;->d:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/ef2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ef2;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/ef2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ef2;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Landroidx/appcompat/view/menu/ef2;
    .locals 4

    const-class v0, Landroidx/appcompat/view/menu/ef2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/ef2;->e:Landroidx/appcompat/view/menu/ef2;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/ef2;

    invoke-static {}, Landroidx/appcompat/view/menu/zo1;->a()Landroidx/appcompat/view/menu/jh1;

    new-instance v2, Landroidx/appcompat/view/menu/le0;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/le0;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/view/menu/ef2;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Landroidx/appcompat/view/menu/ef2;->e:Landroidx/appcompat/view/menu/ef2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/view/menu/ef2;->e:Landroidx/appcompat/view/menu/ef2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/ef2;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ef2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final c(ILandroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/sd2;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ef2;->f()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/sd2;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ef2;->g(Landroidx/appcompat/view/menu/ne2;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILandroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    new-instance p1, Landroidx/appcompat/view/menu/ye2;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ef2;->f()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Landroidx/appcompat/view/menu/ye2;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ef2;->g(Landroidx/appcompat/view/menu/ne2;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/ef2;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/ef2;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Landroidx/appcompat/view/menu/ne2;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Queueing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ef2;->c:Landroidx/appcompat/view/menu/q92;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q92;->g(Landroidx/appcompat/view/menu/ne2;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/q92;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/q92;-><init>(Landroidx/appcompat/view/menu/ef2;Landroidx/appcompat/view/menu/j72;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ef2;->c:Landroidx/appcompat/view/menu/q92;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q92;->g(Landroidx/appcompat/view/menu/ne2;)Z

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/ne2;->b:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method
