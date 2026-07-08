.class public Landroidx/appcompat/view/menu/jv0;
.super Landroidx/appcompat/view/menu/h00$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/jv0$c;,
        Landroidx/appcompat/view/menu/jv0$b;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/Object;


# instance fields
.field public l:Landroidx/appcompat/view/menu/jv0$b;

.field public m:Landroid/app/Application;

.field public n:Landroidx/appcompat/view/menu/p3;

.field public final o:Ljava/util/List;

.field public final p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/jv0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h00$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jv0;->o:Ljava/util/List;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->n()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/jv0;->p:Landroid/os/Handler;

    return-void
.end method

.method public static B2()Landroidx/appcompat/view/menu/jv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/jv0$c;->a:Landroidx/appcompat/view/menu/jv0;

    return-object v0
.end method

.method public static C2(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/t1;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Landroidx/appcompat/view/menu/t1$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public static D2()Landroidx/appcompat/view/menu/p3;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/jv0;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/jv0;->n:Landroidx/appcompat/view/menu/p3;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static E2()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/p3;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static F2()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/p3;->o:I

    :goto_0
    return v0
.end method

.method public static G2()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0$b;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static H2()Landroid/app/Application;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    return-object v0
.end method

.method public static I2()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/d7;->a(I)I

    move-result v0

    return v0
.end method

.method public static J2()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/p3;->p:I

    :goto_0
    return v0
.end method

.method public static K2()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/p3;->s:I

    :goto_0
    return v0
.end method

.method public static M2()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0;->o:Ljava/util/List;

    return-object v0
.end method

.method public static N2()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/p3;->r:I

    :goto_0
    return v0
.end method

.method public static Q2(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Landroidx/appcompat/view/menu/t1;->p:Landroidx/appcompat/view/menu/go0$d;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static T2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic V2(Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/t1;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/view/menu/jv0;->C2(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/appcompat/view/menu/c1;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroidx/appcompat/view/menu/c1;->f:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {p0, v1, v2}, Landroidx/appcompat/view/menu/k1;->a(Landroid/os/IBinder;ILandroid/content/Intent;)V

    sget-object p0, Landroidx/appcompat/view/menu/c1;->c:Landroidx/appcompat/view/menu/go0$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic W2(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    sget-object v0, Landroidx/appcompat/view/menu/co0;->b:Landroidx/appcompat/view/menu/go0$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v0

    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/t1;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v2, Landroidx/appcompat/view/menu/u1;->d:Landroidx/appcompat/view/menu/go0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/go0$c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Landroidx/appcompat/view/menu/u1;->d:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/appcompat/view/menu/u1;->c:Landroidx/appcompat/view/menu/go0$d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/go0$c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/appcompat/view/menu/u1;->c:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v1, Landroidx/appcompat/view/menu/u1;->b:Landroidx/appcompat/view/menu/go0$d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/go0$c;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/appcompat/view/menu/u1;->b:Landroidx/appcompat/view/menu/go0$d;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic h(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jv0;->W2(Landroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/jv0;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/jv0;->U2(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method public static synthetic k(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jv0;->V2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic u2(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/wn0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jv0;->X2(Landroidx/appcompat/view/menu/wn0;)V

    return-void
.end method

.method public static bridge synthetic v2(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/p3;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jv0;->n:Landroidx/appcompat/view/menu/p3;

    return-void
.end method

.method public static bridge synthetic w2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/jv0;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public static z2(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .locals 2

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A2(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;
    .locals 8

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/jv0;->x2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/m90;->h:Landroidx/appcompat/view/menu/go0$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    iget-object v1, v1, Landroidx/appcompat/view/menu/jv0$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroidx/appcompat/view/menu/tg;->e:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Landroidx/appcompat/view/menu/xs0;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    aput-object p2, v5, v4

    iget-object p2, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    const/4 v4, 0x4

    aput-object p2, v5, v4

    sget-object p2, Landroidx/appcompat/view/menu/l1;->c:Landroidx/appcompat/view/menu/go0$e;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v5, v2

    invoke-virtual {v3, v0, v5}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public L2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    iget-object v0, v0, Landroidx/appcompat/view/menu/jv0$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public N()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->G2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/jv0;->x2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public O1(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->m(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized O2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Landroidx/appcompat/view/menu/qv0;->m(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [Landroid/content/pm/ProviderInfo;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/jv0;->o:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->o:Ljava/util/List;

    invoke-static {v0}, Landroidx/appcompat/view/menu/fl0;->a(Ljava/util/List;)I

    sget-object v0, Landroidx/appcompat/view/menu/t1;->f:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Landroidx/appcompat/view/menu/jv0;->z2(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/tg;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/view/menu/m90;->g:Landroidx/appcompat/view/menu/go0$b;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Landroidx/appcompat/view/menu/m90;->f:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v5, v4, v1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x9

    if-ge v5, v7, :cond_2

    new-instance v7, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x18

    if-ge v5, v7, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/hx0;->a()V

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_4
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/g71;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    sget-object v5, Landroidx/appcompat/view/menu/u41;->c:Landroidx/appcompat/view/menu/go0$d;

    sget-object v7, Landroidx/appcompat/view/menu/u41;->b:Landroidx/appcompat/view/menu/go0$e;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v5, v7, v9}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroidx/appcompat/view/menu/jd;->b:Landroidx/appcompat/view/menu/go0$e;

    new-array v7, v8, [Ljava/lang/Object;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Lcom/snake/helper/Native;->i(I)V

    invoke-static {}, Landroidx/appcompat/view/menu/z10;->d()Landroidx/appcompat/view/menu/z10;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/appcompat/view/menu/z10;->c(Landroid/content/Context;)V

    new-instance v5, Landroidx/appcompat/view/menu/jv0$b;

    invoke-direct {v5}, Landroidx/appcompat/view/menu/jv0$b;-><init>()V

    iput-object v1, v5, Landroidx/appcompat/view/menu/jv0$b;->b:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v5, Landroidx/appcompat/view/menu/jv0$b;->a:Ljava/lang/String;

    iput-object v4, v5, Landroidx/appcompat/view/menu/jv0$b;->d:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->o:Ljava/util/List;

    iput-object v1, v5, Landroidx/appcompat/view/menu/jv0$b;->c:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/t1$b;->d:Landroidx/appcompat/view/menu/go0$b;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v5, Landroidx/appcompat/view/menu/jv0$b;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v10, Landroid/app/Instrumentation;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/t1$b;->b:Landroidx/appcompat/view/menu/go0$b;

    iget-object v7, v5, Landroidx/appcompat/view/menu/jv0$b;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/t1$b;->c:Landroidx/appcompat/view/menu/go0$b;

    iget-object v7, v5, Landroidx/appcompat/view/menu/jv0$b;->d:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/t1$b;->e:Landroidx/appcompat/view/menu/go0$b;

    iget-object v7, v5, Landroidx/appcompat/view/menu/jv0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/t1$b;->f:Landroidx/appcompat/view/menu/go0$b;

    iget-object v7, v5, Landroidx/appcompat/view/menu/jv0$b;->c:Ljava/util/List;

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    const-string v0, "AndroidNSSP"

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    sget-object v0, Landroidx/appcompat/view/menu/we0;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1, p2, v2}, Landroidx/appcompat/view/menu/jv0;->a3(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v0, Landroidx/appcompat/view/menu/m90;->i:Landroidx/appcompat/view/menu/go0$d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v8

    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroidx/appcompat/view/menu/zh;->a(Landroid/app/Application;)V

    invoke-static {}, Landroidx/appcompat/view/menu/r3;->c()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    sget-object v1, Landroidx/appcompat/view/menu/t1;->h:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/t1;->m:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    iget-object v2, v5, Landroidx/appcompat/view/menu/jv0$b;->a:Ljava/lang/String;

    iget-object v3, v5, Landroidx/appcompat/view/menu/jv0$b;->c:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/appcompat/view/menu/jv0;->R2(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/jv0;->Z2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    invoke-static {}, Landroidx/appcompat/view/menu/r3;->g()Landroidx/appcompat/view/menu/r3;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/r3;->callApplicationOnCreate(Landroid/app/Application;)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/jv0;->Y2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    invoke-static {}, Landroidx/appcompat/view/menu/iz;->c()Landroidx/appcompat/view/menu/iz;

    move-result-object p1

    const-class p2, Landroidx/appcompat/view/menu/my;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/iz;->b(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to makeApplication"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public P2(Landroidx/appcompat/view/menu/p3;)V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/jv0;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->n:Landroidx/appcompat/view/menu/p3;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/appcompat/view/menu/p3;->m:Ljava/lang/String;

    iget-object v2, p1, Landroidx/appcompat/view/menu/p3;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject init process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this process is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/jv0;->n:Landroidx/appcompat/view/menu/p3;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/jv0;->n:Landroidx/appcompat/view/menu/p3;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h00$a;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroidx/appcompat/view/menu/jv0$a;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/jv0$a;-><init>(Landroidx/appcompat/view/menu/jv0;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final R2(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v3, :cond_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v2, v4}, Landroidx/appcompat/view/menu/jv0;->Q2(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroidx/appcompat/view/menu/fg;->c()V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroidx/appcompat/view/menu/fg;->c()V

    throw p1
.end method

.method public S2()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic U2(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/jv0;->O2(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public W1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic X2(Landroidx/appcompat/view/menu/wn0;)V
    .locals 5

    iget-object v0, p1, Landroidx/appcompat/view/menu/wn0;->m:Landroid/content/Intent;

    iget-object v1, p1, Landroidx/appcompat/view/menu/wn0;->n:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroidx/appcompat/view/menu/wn0;->o:Landroidx/appcompat/view/menu/wh0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/wh0;->a()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroidx/appcompat/view/menu/t8;->c:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v0, Landroidx/appcompat/view/menu/t8;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/view/menu/wn0;->o:Landroidx/appcompat/view/menu/wh0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dv0;->h(Landroidx/appcompat/view/menu/wh0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final Y2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yu0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    const/4 p1, 0x0

    throw p1
.end method

.method public final Z2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yu0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    const/4 p1, 0x0

    throw p1
.end method

.method public final a3(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yu0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    const/4 p1, 0x0

    throw p1
.end method

.method public e2(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->p:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/view/menu/fv0;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/fv0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/p3;->m:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/jv0;->x2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/dg;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public n2(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/x3;->c()Landroidx/appcompat/view/menu/x3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x3;->n(Landroid/content/Intent;)V

    return-void
.end method

.method public s0()Landroid/os/IBinder;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/t1;->l:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public t(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->p:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/view/menu/gv0;

    invoke-direct {v1, p2, p1}, Landroidx/appcompat/view/menu/gv0;-><init>(Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public x2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yu0;->n()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/iv0;

    invoke-direct {v2, p0, p1, p2, v0}, Landroidx/appcompat/view/menu/iv0;-><init>(Landroidx/appcompat/view/menu/jv0;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/jv0;->O2(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public y2(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;
    .locals 9

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/jv0;->x2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/m90;->h:Landroidx/appcompat/view/menu/go0$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0;->l:Landroidx/appcompat/view/menu/jv0$b;

    iget-object v1, v1, Landroidx/appcompat/view/menu/jv0$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/tg;->e:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroidx/appcompat/view/menu/xs0;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/jv0;->s0()Landroid/os/IBinder;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, p0, Landroidx/appcompat/view/menu/jv0;->m:Landroid/app/Application;

    const/4 v7, 0x4

    aput-object v5, v6, v7

    sget-object v5, Landroidx/appcompat/view/menu/l1;->c:Landroidx/appcompat/view/menu/go0$e;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v6, v5

    invoke-virtual {v4, v0, v6}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mg;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {v0, v1}, Landroid/app/job/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create JobService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public z(Landroidx/appcompat/view/menu/wn0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jv0;->N()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jv0;->p:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/view/menu/hv0;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/hv0;-><init>(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/wn0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
