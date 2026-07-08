.class public Landroidx/appcompat/view/menu/yu0;
.super Landroidx/appcompat/view/menu/wb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/yu0$a;
    }
.end annotation


# static fields
.field public static final h:Landroidx/appcompat/view/menu/yu0;

.field public static i:Landroid/content/Context;


# instance fields
.field public a:Landroidx/appcompat/view/menu/yu0$a;

.field public final b:Ljava/util/Map;

.field public c:Landroidx/appcompat/view/menu/wb;

.field public final d:Ljava/util/List;

.field public final e:Landroid/os/Handler;

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/yu0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/yu0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/yu0;->h:Landroidx/appcompat/view/menu/yu0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wb;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yu0;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yu0;->d:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/yu0;->e:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/yu0;->f:I

    sget-object v0, Landroidx/appcompat/view/menu/m41;->b:Landroidx/appcompat/view/menu/go0$e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/yu0;->g:I

    return-void
.end method

.method public static D()Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/t1;->k:Landroidx/appcompat/view/menu/go0$e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static E(Landroidx/appcompat/view/menu/yj0;)V
    .locals 0

    return-void
.end method

.method public static d(I)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/cy;->g(I)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/cy;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()Landroidx/appcompat/view/menu/yu0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/yu0;->h:Landroidx/appcompat/view/menu/yu0;

    return-object v0
.end method

.method public static j()Landroidx/appcompat/view/menu/dv0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/dv0;->i()Landroidx/appcompat/view/menu/dv0;

    move-result-object v0

    return-object v0
.end method

.method public static k()Landroidx/appcompat/view/menu/mv0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/mv0;->h()Landroidx/appcompat/view/menu/mv0;

    move-result-object v0

    return-object v0
.end method

.method public static l()Landroidx/appcompat/view/menu/rv0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/rv0;->f()Landroidx/appcompat/view/menu/rv0;

    move-result-object v0

    return-object v0
.end method

.method public static m()Landroid/content/Context;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/yu0;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/yu0;->f:I

    return v0
.end method

.method public static q()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/yu0;->g:I

    return v0
.end method

.method public static r()Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/yu0;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "processName = null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u()Landroidx/appcompat/view/menu/qv0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/qv0;->g()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    return-object v0
.end method

.method public static y()Z
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/qv0;->t(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->a:Landroidx/appcompat/view/menu/yu0$a;

    sget-object v1, Landroidx/appcompat/view/menu/yu0$a;->m:Landroidx/appcompat/view/menu/yu0$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/qv0;->l(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/yu0;->F(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public F(Landroid/content/Intent;I)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/dv0;->C(Landroid/content/Intent;I)V

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->c:Landroidx/appcompat/view/menu/wb;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->c:Landroidx/appcompat/view/menu/wb;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wb;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/io/File;I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->c:Landroidx/appcompat/view/menu/wb;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/wb;->c(Ljava/io/File;I)Z

    move-result p1

    return p1
.end method

.method public f(Landroid/content/Context;Landroidx/appcompat/view/menu/wb;)V
    .locals 1

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "L"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/hz;->a([Ljava/lang/String;)Z

    :cond_0
    sput-object p1, Landroidx/appcompat/view/menu/yu0;->i:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/yu0;->c:Landroidx/appcompat/view/menu/wb;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/yu0;->v()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/yu0;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Landroidx/appcompat/view/menu/yu0$a;->o:Landroidx/appcompat/view/menu/yu0$a;

    iput-object p1, p0, Landroidx/appcompat/view/menu/yu0;->a:Landroidx/appcompat/view/menu/yu0$a;

    sget-object p1, Landroidx/appcompat/view/menu/yu0;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/snake/helper/Native;->ic(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object p2

    sget v0, Landroidx/appcompat/view/menu/bn0;->a:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/appcompat/view/menu/yu0$a;->m:Landroidx/appcompat/view/menu/yu0$a;

    iput-object p1, p0, Landroidx/appcompat/view/menu/yu0;->a:Landroidx/appcompat/view/menu/yu0$a;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/yu0$a;->n:Landroidx/appcompat/view/menu/yu0$a;

    iput-object p1, p0, Landroidx/appcompat/view/menu/yu0;->a:Landroidx/appcompat/view/menu/yu0$a;

    sget-object p1, Landroidx/appcompat/view/menu/yu0;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/snake/helper/Native;->ic(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yu0;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->x()V

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/iz;->c()Landroidx/appcompat/view/menu/iz;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/iz;->d()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientConfiguration is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/yu0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/fg;->c()V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/yu0;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/at0;->d()V

    :cond_1
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->d:Ljava/util/List;

    return-object v0
.end method

.method public n()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public t(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_S_|_server_name_"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/kl0;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VM"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroidx/appcompat/view/menu/gl0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_S_|_server_"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/e9;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/yu0;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final v()V
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SnakeEngine_Core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "SnakeEngine_Core"

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/yu0;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/snake/helper/DaemonService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;I)Landroidx/appcompat/view/menu/k50;
    .locals 2

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/j50;->a()Landroidx/appcompat/view/menu/j50;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/appcompat/view/menu/qv0;->s(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Landroidx/appcompat/view/menu/k50;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/k50;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/k50;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;

    move-result-object p1

    return-object p1
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/yu0;->a:Landroidx/appcompat/view/menu/yu0$a;

    sget-object v1, Landroidx/appcompat/view/menu/yu0$a;->n:Landroidx/appcompat/view/menu/yu0$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
