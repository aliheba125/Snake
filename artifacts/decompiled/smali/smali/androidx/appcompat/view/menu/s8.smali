.class public Landroidx/appcompat/view/menu/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/bh0;


# static fields
.field public static volatile p:Landroidx/appcompat/view/menu/s8;


# instance fields
.field public final l:Landroidx/appcompat/view/menu/x6;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/Map;

.field public final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/x6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/s8;->n:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/s8$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/s8$a;-><init>(Landroidx/appcompat/view/menu/s8;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/s8;->o:Landroid/os/Handler;

    iput-object p1, p0, Landroidx/appcompat/view/menu/s8;->l:Landroidx/appcompat/view/menu/x6;

    return-void
.end method

.method public static e(Landroidx/appcompat/view/menu/x6;)Landroidx/appcompat/view/menu/s8;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/s8;->p:Landroidx/appcompat/view/menu/s8;

    if-nez v0, :cond_1

    const-class v0, Landroidx/appcompat/view/menu/s8;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/s8;->p:Landroidx/appcompat/view/menu/s8;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/s8;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/s8;-><init>(Landroidx/appcompat/view/menu/x6;)V

    sput-object v1, Landroidx/appcompat/view/menu/s8;->p:Landroidx/appcompat/view/menu/s8;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Landroidx/appcompat/view/menu/s8;->p:Landroidx/appcompat/view/menu/s8;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/wh0;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->n:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/s8;->o:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/appcompat/view/menu/s8;->n:Ljava/util/Map;

    iget-object p1, p1, Landroidx/appcompat/view/menu/wh0;->x:Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroidx/appcompat/view/menu/u6;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$b;

    iget-object v2, v2, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$c;

    new-instance v4, Lcom/snake/helper/ProxyBroadcastReceiver;

    invoke-direct {v4}, Lcom/snake/helper/ProxyBroadcastReceiver;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v3, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    const/4 v6, 0x4

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v3, p1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/view/menu/s8;->a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Landroidx/appcompat/view/menu/wh0;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->n:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/s8;->n:Ljava/util/Map;

    iget-object v2, p1, Landroidx/appcompat/view/menu/wh0;->x:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/s8;->o:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/s8;->o:Landroid/os/Handler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->l:Landroidx/appcompat/view/menu/x6;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/x6;->k(Landroidx/appcompat/view/menu/bh0;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->l:Landroidx/appcompat/view/menu/x6;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x6;->A2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/y6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/s8;->c(Landroidx/appcompat/view/menu/u6;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;ZI)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object p3, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public k(Ljava/lang/String;I)V
    .locals 1

    iget-object p2, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/s8;->l:Landroidx/appcompat/view/menu/x6;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x6;->z2(Ljava/lang/String;)Landroidx/appcompat/view/menu/y6;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/s8;->c(Landroidx/appcompat/view/menu/u6;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
