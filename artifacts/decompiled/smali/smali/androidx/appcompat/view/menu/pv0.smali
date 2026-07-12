.class public Landroidx/appcompat/view/menu/pv0;
.super Landroidx/appcompat/view/menu/k00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final n:Landroidx/appcompat/view/menu/pv0;


# instance fields
.field public final l:Ljava/util/Map;

.field public final m:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/pv0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pv0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/pv0;->n:Landroidx/appcompat/view/menu/pv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/k00$a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    return-void
.end method

.method public static k()Landroidx/appcompat/view/menu/pv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/pv0;->n:Landroidx/appcompat/view/menu/pv0;

    return-object v0
.end method

.method public static w2(IILjava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A2(Landroid/app/NotificationChannel;I)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ef0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->u2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ef0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->v2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    return-void
.end method

.method public final B2(Landroid/app/NotificationChannelGroup;I)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ff0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->v2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ff0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/ff0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->a0(Landroid/app/NotificationChannel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C2(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final D2(Landroid/app/NotificationChannel;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ef0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/pv0;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ef0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final E2(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ff0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/pv0;->z2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ff0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/ff0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/pv0;->D2(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H0(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p1

    iget-object p2, p1, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public R(ILjava/lang/String;Landroid/app/Notification;I)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p1, v0}, Landroidx/appcompat/view/menu/pv0;->w2(IILjava/lang/String;)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/view/menu/lf0;->b:Landroidx/appcompat/view/menu/go0$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4}, Landroidx/appcompat/view/menu/pv0;->u2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/lf0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/lf0;->c:Landroidx/appcompat/view/menu/go0$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4}, Landroidx/appcompat/view/menu/pv0;->v2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/lf0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p4}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p2

    iget-object p4, p2, Landroidx/appcompat/view/menu/nf0;->c:Ljava/util/Set;

    monitor-enter p4

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/nf0;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public V(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->v2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public V0(Ljava/lang/String;I)Landroid/app/NotificationChannel;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y0(ILjava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, Landroidx/appcompat/view/menu/pv0;->w2(IILjava/lang/String;)I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p2

    iget-object p3, p2, Landroidx/appcompat/view/menu/nf0;->c:Ljava/util/Set;

    monitor-enter p3

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/nf0;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a0(Landroid/app/NotificationChannel;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->A2(Landroid/app/NotificationChannel;I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pv0;->D2(Landroid/app/NotificationChannel;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e0(Landroid/app/NotificationChannelGroup;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->B2(Landroid/app/NotificationChannelGroup;I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pv0;->E2(Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/appcompat/view/menu/nf0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroidx/appcompat/view/menu/pv0;->v2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroidx/appcompat/view/menu/pv0;->u2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/nf0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->C2(Ljava/lang/String;I)V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public p(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object p1

    iget-object p2, p1, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p1(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/pv0;->x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/nf0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv0;->u2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv0;->m:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final u2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "@snake_engine-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final v2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "@snake_engine-group-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final x2(Ljava/lang/String;I)Landroidx/appcompat/view/menu/nf0;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nf0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/nf0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nf0;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv0;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-object v0

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "@snake_engine-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final z2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "@snake_engine-group-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method
