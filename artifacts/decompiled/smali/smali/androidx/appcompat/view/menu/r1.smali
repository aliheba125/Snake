.class public Landroidx/appcompat/view/menu/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Landroid/app/ActivityManager;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/r1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/r1$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/r1$a;-><init>(Landroidx/appcompat/view/menu/r1;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r1;->d:Landroid/os/Handler;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroidx/appcompat/view/menu/r1;->a:Landroid/app/ActivityManager;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/r1;Landroidx/appcompat/view/menu/yj0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r1;->l(Landroidx/appcompat/view/menu/yj0;)V

    return-void
.end method

.method public static bridge synthetic b(Landroidx/appcompat/view/menu/r1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Intent;I)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Landroidx/appcompat/view/menu/p1;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deliverNewIntent called: record="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bActivityThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/h00;->t(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return-void
.end method

.method public final e(ILandroid/content/ComponentName;)Landroidx/appcompat/view/menu/p1;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/iz0;

    iget v3, v2, Landroidx/appcompat/view/menu/iz0;->b:I

    if-ne p1, v3, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/p1;

    iget-object v4, v3, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/iz0;

    iget v3, v2, Landroidx/appcompat/view/menu/iz0;->b:I

    if-ne p1, v3, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/p1;

    iget-object v4, v3, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final g(ILjava/lang/String;)Landroidx/appcompat/view/menu/iz0;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/iz0;

    iget v3, v2, Landroidx/appcompat/view/menu/iz0;->b:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Landroidx/appcompat/view/menu/iz0;->c:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

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

.method public final h(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/iz0;

    iget-object v1, v1, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/p1;

    iget v3, v2, Landroidx/appcompat/view/menu/p1;->r:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Landroidx/appcompat/view/menu/p1;->s:Z

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v2, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    iget-object v3, v3, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    iget-object v2, v2, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/h00;->e2(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/p1;->n:Landroid/os/IBinder;

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object p2

    const-string v1, "t.MainActivity"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Landroid/os/IBinder;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/p1;->n:Landroid/os/IBinder;

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Landroid/content/Intent;ILandroidx/appcompat/view/menu/il0;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/zg0;->k(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p4, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    :goto_0
    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v6, Landroidx/appcompat/view/menu/nn0;->i:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/nn0;->k:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroidx/appcompat/view/menu/kl0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v5

    iget v6, p4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    invoke-static {p2, v6}, Landroidx/appcompat/view/menu/kl0;->d(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :catchall_0
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v5

    iget p4, p4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/kl0;->d(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v5, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    iget-object p2, p3, Landroidx/appcompat/view/menu/il0;->b:Landroid/content/pm/ActivityInfo;

    iget-object p4, p3, Landroidx/appcompat/view/menu/il0;->d:Ljava/lang/String;

    iget p3, p3, Landroidx/appcompat/view/menu/il0;->a:I

    invoke-static {v0, p1, p2, p4, p3}, Landroidx/appcompat/view/menu/il0;->b(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    return-object v0

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    throw p1
.end method

.method public final synthetic l(Landroidx/appcompat/view/menu/yj0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r1;->y(Landroidx/appcompat/view/menu/yj0;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/yu0;->E(Landroidx/appcompat/view/menu/yj0;)V

    return-void
.end method

.method public m(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Landroidx/appcompat/view/menu/p1;
    .locals 2

    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/view/menu/p1;->a(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    iget-object p4, p1, Landroidx/appcompat/view/menu/p1;->u:Ljava/lang/String;

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Landroidx/appcompat/view/menu/r1;->d:Landroid/os/Handler;

    iget-object p4, p1, Landroidx/appcompat/view/menu/p1;->u:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget-object p4, p0, Landroidx/appcompat/view/menu/r1;->d:Landroid/os/Handler;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p4, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Landroidx/appcompat/view/menu/yj0;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/p1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/r1;->c:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r1;->d:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p4, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter p4

    :try_start_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/iz0;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/iz0;

    iget v2, v0, Landroidx/appcompat/view/menu/p1;->r:I

    iget-object v3, v0, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/appcompat/view/menu/te;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Landroidx/appcompat/view/menu/iz0;-><init>(IILjava/lang/String;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/p1;->q:Landroid/content/Intent;

    iput-object v2, v1, Landroidx/appcompat/view/menu/iz0;->d:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p3, v0, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    iput-object p1, v0, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    iput-object v1, v0, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/iz0;->a(Landroidx/appcompat/view/menu/p1;)V

    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public o(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/view/menu/p1;->s:Z

    iget-object p2, p1, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/iz0;->d(Landroidx/appcompat/view/menu/p1;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public p(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/iz0;->d(Landroidx/appcompat/view/menu/p1;)V

    iget-object v1, p1, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/iz0;->a(Landroidx/appcompat/view/menu/p1;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public q(ILandroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r1;->x()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/view/menu/p1;->s:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 5

    and-int/lit8 p7, p7, -0xf

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/qz;->d:Landroidx/appcompat/view/menu/go0$d;

    sget-object v2, Landroidx/appcompat/view/menu/l1;->c:Landroidx/appcompat/view/menu/go0$e;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object p3, v3, p1

    const/4 p1, 0x4

    aput-object p4, v3, p1

    const/4 p1, 0x5

    aput-object p5, v3, p1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v3, p2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v3, p2

    const/16 p1, 0x8

    const/4 p2, 0x0

    aput-object p2, v3, p1

    const/16 p1, 0x9

    aput-object p8, v3, p1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public s(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    aget-object v8, v1, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v5, p0

    move v6, p1

    move-object/from16 v9, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v5 .. v13}, Landroidx/appcompat/view/menu/r1;->v(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroidx/appcompat/view/menu/r1;->m(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Landroidx/appcompat/view/menu/p1;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/r1;->w(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroidx/appcompat/view/menu/p1;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final u(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroidx/appcompat/view/menu/p1;Landroid/content/pm/ActivityInfo;I)I
    .locals 10

    move-object v9, p0

    move-object v0, p1

    move-object v4, p3

    move/from16 v1, p8

    move-object/from16 v2, p10

    invoke-virtual {p0, p1, v2, p3, v1}, Landroidx/appcompat/view/menu/r1;->m(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Landroidx/appcompat/view/menu/p1;

    move-result-object v3

    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/appcompat/view/menu/r1;->w(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroidx/appcompat/view/menu/p1;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v1, p11

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    const-string v3, "_snake_external_caller"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x8080000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p9

    goto :goto_1

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :goto_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/appcompat/view/menu/yj0;->o:Landroid/os/IInterface;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/appcompat/view/menu/r1;->r(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public v(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 19

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v1, v13, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/r1;->x()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/appcompat/view/menu/x6;->n(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_3

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v7, v13, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/iz0;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/iz0;->b()Landroidx/appcompat/view/menu/p1;

    move-result-object v8

    if-eqz v8, :cond_1

    :cond_2
    if-eqz v8, :cond_3

    iget-object v7, v8, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v7, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    new-instance v7, Landroid/content/pm/ActivityInfo;

    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_5
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/view/menu/r1;->f(ILandroid/os/IBinder;)Landroidx/appcompat/view/menu/p1;

    move-result-object v7

    if-nez v7, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-eqz v7, :cond_7

    iget-object v7, v7, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_0
    invoke-static {v11}, Landroidx/appcompat/view/menu/te;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x20000000

    invoke-virtual {v13, v2, v9}, Landroidx/appcompat/view/menu/r1;->c(Landroid/content/Intent;I)Z

    move-result v9

    if-nez v9, :cond_9

    iget v9, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v9, v3, :cond_8

    goto :goto_1

    :cond_8
    move v9, v6

    goto :goto_2

    :cond_9
    :goto_1
    move v9, v3

    :goto_2
    const/high16 v10, 0x10000000

    invoke-virtual {v13, v2, v10}, Landroidx/appcompat/view/menu/r1;->c(Landroid/content/Intent;I)Z

    move-result v10

    const/high16 v14, 0x4000000

    invoke-virtual {v13, v2, v14}, Landroidx/appcompat/view/menu/r1;->c(Landroid/content/Intent;I)Z

    move-result v14

    const v15, 0x8000

    invoke-virtual {v13, v2, v15}, Landroidx/appcompat/view/menu/r1;->c(Landroid/content/Intent;I)Z

    move-result v15

    iget v5, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v12, 0x3

    const/4 v6, 0x2

    if-eqz v5, :cond_b

    if-eq v5, v3, :cond_b

    if-eq v5, v6, :cond_b

    if-eq v5, v12, :cond_a

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v13, v0, v8}, Landroidx/appcompat/view/menu/r1;->g(ILjava/lang/String;)Landroidx/appcompat/view/menu/iz0;

    move-result-object v5

    goto :goto_3

    :cond_b
    invoke-virtual {v13, v0, v8}, Landroidx/appcompat/view/menu/r1;->g(ILjava/lang/String;)Landroidx/appcompat/view/menu/iz0;

    move-result-object v5

    if-nez v5, :cond_c

    if-nez v10, :cond_c

    move-object v5, v7

    :cond_c
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " affinity="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newTask="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " clearTop="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " singleTop="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " launchMode="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/iz0;->c()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_14

    :cond_e
    iget-object v6, v13, Landroidx/appcompat/view/menu/r1;->a:Landroid/app/ActivityManager;

    iget v8, v5, Landroidx/appcompat/view/menu/iz0;->a:I

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v12}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v14, :cond_10

    if-nez v9, :cond_10

    if-eqz v15, :cond_f

    goto :goto_4

    :cond_f
    iget-object v6, v5, Landroidx/appcompat/view/menu/iz0;->d:Landroid/content/Intent;

    invoke-static {v6, v2}, Landroidx/appcompat/view/menu/te;->b(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v5, Landroidx/appcompat/view/menu/iz0;->d:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    if-ne v6, v8, :cond_10

    const/4 v6, 0x0

    return v6

    :cond_10
    :goto_4
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/iz0;->b()Landroidx/appcompat/view/menu/p1;

    move-result-object v12

    invoke-static {v11}, Landroidx/appcompat/view/menu/te;->f(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v13, v0, v6}, Landroidx/appcompat/view/menu/r1;->e(ILandroid/content/ComponentName;)Landroidx/appcompat/view/menu/p1;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityLocked: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " found="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " clearTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " singleTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " resultTo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_15

    if-eqz v8, :cond_15

    iget-object v3, v8, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    monitor-enter v3

    :try_start_2
    iget-object v4, v8, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    iget-object v4, v4, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_6
    if-ltz v4, :cond_14

    iget-object v6, v8, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    iget-object v6, v6, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/p1;

    if-eq v6, v8, :cond_12

    move-object/from16 v18, v7

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/p1;->s:Z

    add-int/lit8 v4, v4, -0x1

    move/from16 v6, p6

    move-object/from16 v7, v18

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_12
    move-object/from16 v18, v7

    const/4 v7, 0x1

    if-eqz v9, :cond_13

    move-object/from16 v16, v8

    goto :goto_8

    :cond_13
    iput-boolean v7, v8, Landroidx/appcompat/view/menu/p1;->s:Z

    goto :goto_7

    :cond_14
    move-object/from16 v18, v7

    :goto_7
    const/16 v16, 0x0

    :goto_8
    monitor-exit v3

    goto :goto_a

    :goto_9
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_15
    move-object/from16 v18, v7

    const/16 v16, 0x0

    :goto_a
    if-eqz v9, :cond_16

    if-nez v14, :cond_16

    iget-object v3, v12, Landroidx/appcompat/view/menu/p1;->q:Landroid/content/Intent;

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/te;->b(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v16, v12

    :cond_16
    iget v3, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    if-nez v14, :cond_19

    iget-object v3, v12, Landroidx/appcompat/view/menu/p1;->q:Landroid/content/Intent;

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/te;->b(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v16, v12

    goto :goto_d

    :cond_17
    invoke-static {v11}, Landroidx/appcompat/view/menu/te;->f(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroidx/appcompat/view/menu/r1;->e(ILandroid/content/ComponentName;)Landroidx/appcompat/view/menu/p1;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v4, v5, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    monitor-enter v4

    :try_start_3
    iget-object v6, v5, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_b
    if-ltz v6, :cond_18

    iget-object v9, v5, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/p1;

    if-eq v9, v3, :cond_18

    iput-boolean v7, v9, Landroidx/appcompat/view/menu/p1;->s:Z

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_18
    monitor-exit v4

    move-object/from16 v16, v3

    goto :goto_d

    :goto_c
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_19
    :goto_d
    iget v3, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a

    move-object v3, v12

    goto :goto_e

    :cond_1a
    move-object/from16 v3, v16

    :goto_e
    if-eqz v15, :cond_1b

    if-eqz v10, :cond_1b

    iget-object v4, v5, Landroidx/appcompat/view/menu/iz0;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/p1;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/view/menu/p1;->s:Z

    goto :goto_f

    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/r1;->h(I)V

    if-eqz v3, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newIntentRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " targetActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1c

    iget-object v1, v8, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    goto :goto_10

    :cond_1c
    const-string v1, "NULL"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " topActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1d

    iget-object v1, v12, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    goto :goto_11

    :cond_1d
    const-string v1, "NULL"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v2}, Landroidx/appcompat/view/menu/r1;->d(Landroidx/appcompat/view/menu/p1;Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_1e
    if-nez v1, :cond_20

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/iz0;->b()Landroidx/appcompat/view/menu/p1;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v4, v3, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1f

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v1, v3, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    :cond_1f
    :goto_12
    move-object v4, v1

    goto :goto_13

    :cond_20
    if-eqz v18, :cond_1f

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/view/menu/iz0;->b()Landroidx/appcompat/view/menu/p1;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v1, v3, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    goto :goto_12

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p1

    move-object v10, v12

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Landroidx/appcompat/view/menu/r1;->u(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroidx/appcompat/view/menu/p1;Landroid/content/pm/ActivityInfo;I)I

    move-result v0

    return v0

    :goto_14
    move-object/from16 p3, p0

    move/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, v11

    move-object/from16 p7, v1

    move/from16 p8, v12

    invoke-virtual/range {p3 .. p8}, Landroidx/appcompat/view/menu/r1;->t(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)I

    move-result v0

    return v0

    :cond_21
    move v0, v6

    return v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final w(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroidx/appcompat/view/menu/p1;)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroidx/appcompat/view/menu/il0;

    iget-object p4, p4, Landroidx/appcompat/view/menu/p1;->u:Ljava/lang/String;

    invoke-direct {v0, p1, p3, p2, p4}, Landroidx/appcompat/view/menu/il0;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/a7;->u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r1;->z(Landroidx/appcompat/view/menu/yj0;)V

    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-virtual {p0, p2, p1, v0, p3}, Landroidx/appcompat/view/menu/r1;->k(Landroid/content/Intent;ILandroidx/appcompat/view/menu/il0;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to create process, name:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->a:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/iz0;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r1;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final y(Landroidx/appcompat/view/menu/yj0;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/r1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/yj0;->o:Landroid/os/IInterface;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public final z(Landroidx/appcompat/view/menu/yj0;)V
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/yj0;->n:Landroidx/appcompat/view/menu/h00;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/yj0;->o:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Landroidx/appcompat/view/menu/q1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/q1;-><init>(Landroidx/appcompat/view/menu/r1;Landroidx/appcompat/view/menu/yj0;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Landroidx/appcompat/view/menu/r1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    :goto_1
    return-void
.end method
