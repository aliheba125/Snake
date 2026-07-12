.class public Landroidx/appcompat/view/menu/yo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/by0;
.implements Landroidx/appcompat/view/menu/sl0;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:Ljava/util/Queue;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yo;->b:Ljava/util/Queue;

    iput-object p1, p0, Landroidx/appcompat/view/menu/yo;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic d(Ljava/util/Map$Entry;Landroidx/appcompat/view/menu/vo;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/yo;->g(Ljava/util/Map$Entry;Landroidx/appcompat/view/menu/vo;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/Map$Entry;Landroidx/appcompat/view/menu/vo;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/zo;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/zo;->a(Landroidx/appcompat/view/menu/vo;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/zo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/Class;Landroidx/appcompat/view/menu/zo;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/yo;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/zo;)V

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/Class;Landroidx/appcompat/view/menu/zo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/yo;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->b:Ljava/util/Queue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroidx/appcompat/view/menu/yo;->b:Ljava/util/Queue;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/yo;->h(Landroidx/appcompat/view/menu/vo;)V

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Landroidx/appcompat/view/menu/vo;)Ljava/util/Set;
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Landroidx/appcompat/view/menu/vo;)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/oj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/yo;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/yo;->f(Landroidx/appcompat/view/menu/vo;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/appcompat/view/menu/xo;

    invoke-direct {v3, v1, p1}, Landroidx/appcompat/view/menu/xo;-><init>(Ljava/util/Map$Entry;Landroidx/appcompat/view/menu/vo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
