.class public Lcom/google/firebase/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/a;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/a;Ljava/lang/String;Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/a;->c(Ljava/lang/String;Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/String;Lcom/google/firebase/messaging/a$a;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/zy0;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const-string p2, "FirebaseMessaging"

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Joining ongoing request for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making new request for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p2}, Lcom/google/firebase/messaging/a$a;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/xo0;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/xo0;-><init>(Lcom/google/firebase/messaging/a;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/view/menu/zy0;->g(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/messaging/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final synthetic c(Ljava/lang/String;Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
