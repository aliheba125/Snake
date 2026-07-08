.class public Landroidx/appcompat/view/menu/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final o:Landroidx/appcompat/view/menu/a7;


# instance fields
.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/List;

.field public final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/a7;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a7;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/a7;->o:Landroidx/appcompat/view/menu/a7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroidx/appcompat/view/menu/yj0;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget v1, p0, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/lv0;->r(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cmdline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/lr;->m([BLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static e()Landroidx/appcompat/view/menu/a7;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/a7;->o:Landroidx/appcompat/view/menu/a7;

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static i(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "processName = null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Landroidx/appcompat/view/menu/yj0;)V
    .locals 0

    iget p0, p0, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {p0}, Landroidx/appcompat/view/menu/lv0;->r(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/yj0;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Landroidx/appcompat/view/menu/h00$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/h00;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a7;->p(Landroidx/appcompat/view/menu/yj0;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroidx/appcompat/view/menu/a7$a;

    invoke-direct {v1, p0, p2, p1}, Landroidx/appcompat/view/menu/a7$a;-><init>(Landroidx/appcompat/view/menu/a7;Landroid/os/IBinder;Landroidx/appcompat/view/menu/yj0;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object v0, p1, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    :try_start_1
    invoke-interface {v0}, Landroidx/appcompat/view/menu/h00;->s0()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/d4;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Landroidx/appcompat/view/menu/yj0;->o:Landroid/os/IInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/yj0;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public c(I)Landroidx/appcompat/view/menu/yj0;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/yj0;

    iget v3, v2, Landroidx/appcompat/view/menu/yj0;->q:I

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/yj0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/d7;->b(II)I

    move-result p1

    iget-object p3, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/yj0;

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {p1}, Landroidx/appcompat/view/menu/d7;->a(I)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/d7;->b(II)I

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->q()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    return-void
.end method

.method public k(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->u:I

    return p1
.end method

.method public final l()I
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/a7;->r(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final m(Landroidx/appcompat/view/menu/yj0;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yj0;->a()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SnakeEngine_client_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yj0;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_Engine_|_init_process_"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/appcompat/view/menu/gl0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_Engine_|_client_"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/e9;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/a7;->a(Landroidx/appcompat/view/menu/yj0;Landroid/os/IBinder;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/a7;->b(Landroidx/appcompat/view/menu/yj0;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p1

    iget-object v3, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/yj0;

    iget v5, v4, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {v5}, Landroidx/appcompat/view/menu/d7;->a(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    iget v6, v4, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/a7;->p(Landroidx/appcompat/view/menu/yj0;)V

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public o(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/d7;->b(II)I

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/yj0;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/a7;->p(Landroidx/appcompat/view/menu/yj0;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p(Landroidx/appcompat/view/menu/yj0;)V
    .locals 4

    iget v0, p1, Landroidx/appcompat/view/menu/yj0;->q:I

    if-lez v0, :cond_0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/a7;->r(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v3, p1, Landroidx/appcompat/view/menu/yj0;->s:I

    if-ne v3, v2, :cond_1

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public q(Landroidx/appcompat/view/menu/yj0;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a7;->p(Landroidx/appcompat/view/menu/yj0;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    iget v2, p1, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    iget v2, p1, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroidx/appcompat/view/menu/a7;->s(Landroidx/appcompat/view/menu/yj0;)V

    invoke-static {}, Landroidx/appcompat/view/menu/pv0;->k()Landroidx/appcompat/view/menu/pv0;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/view/menu/pv0;->h(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/a7;->p(Landroidx/appcompat/view/menu/yj0;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/appcompat/view/menu/a7;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/a7;->r(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/a7;->u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;
    .locals 7

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroidx/appcompat/view/menu/x6;->c0(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3, v2}, Landroidx/appcompat/view/menu/d7;->b(II)I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/a7;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-ne p4, v5, :cond_4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/yj0;

    if-eqz p4, :cond_3

    iget-object v6, p4, Landroidx/appcompat/view/menu/yj0;->v:Landroid/os/ConditionVariable;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    iget-object v6, p4, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    if-eqz v6, :cond_3

    monitor-exit v3

    return-object p4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/a7;->l()I

    move-result p4

    :cond_4
    if-eq p4, v5, :cond_6

    new-instance v5, Landroidx/appcompat/view/menu/yj0;

    invoke-direct {v5, v0, p2}, Landroidx/appcompat/view/menu/yj0;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, v5, Landroidx/appcompat/view/menu/yj0;->p:I

    iput p4, v5, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result p4

    iput p4, v5, Landroidx/appcompat/view/menu/yj0;->r:I

    invoke-virtual {p0, p5, p1}, Landroidx/appcompat/view/menu/a7;->f(ILjava/lang/String;)I

    move-result p1

    iput p1, v5, Landroidx/appcompat/view/menu/yj0;->t:I

    iput p3, v5, Landroidx/appcompat/view/menu/yj0;->u:I

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/a7;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v5}, Landroidx/appcompat/view/menu/a7;->m(Landroidx/appcompat/view/menu/yj0;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/a7;->m:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object p1

    iget p2, v5, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {p2}, Landroidx/appcompat/view/menu/kl0;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/a7;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v5, Landroidx/appcompat/view/menu/yj0;->q:I

    move-object v1, v5

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No processes available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
