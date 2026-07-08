.class public Landroidx/appcompat/view/menu/er;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Landroidx/appcompat/view/menu/ja1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/er;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/er;->a:Landroid/content/Context;

    new-instance p1, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/er;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;ZLandroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/er;->j(Landroid/content/Context;Landroid/content/Intent;ZLandroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/er;->h(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er;->g(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/er;->i(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;Z)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/er;->f(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/ja1;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/dt0;->b()Landroidx/appcompat/view/menu/dt0;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/appcompat/view/menu/dt0;->e(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, v0, p1}, Landroidx/appcompat/view/menu/q71;->f(Landroid/content/Context;Landroidx/appcompat/view/menu/ja1;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ja1;->c(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    :goto_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ja1;->c(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    new-instance p1, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    new-instance p2, Landroidx/appcompat/view/menu/dr;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/dr;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/zy0;->f(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/ja1;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/er;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/er;->d:Landroidx/appcompat/view/menu/ja1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/ja1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/ja1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Landroidx/appcompat/view/menu/er;->d:Landroidx/appcompat/view/menu/ja1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/view/menu/er;->d:Landroidx/appcompat/view/menu/ja1;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/dt0;->b()Landroidx/appcompat/view/menu/dt0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/dt0;->g(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Integer;
    .locals 0

    const/16 p0, 0x193

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/content/Context;Landroid/content/Intent;ZLandroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/zy0;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/er;->e(Landroid/content/Context;Landroid/content/Intent;Z)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    new-instance p1, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    new-instance p2, Landroidx/appcompat/view/menu/cr;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/cr;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/zy0;->f(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p3
.end method


# virtual methods
.method public k(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    const-string v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/er;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/er;->l(Landroid/content/Context;Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {p1, p2, v1}, Landroidx/appcompat/view/menu/er;->e(Landroid/content/Context;Landroid/content/Intent;Z)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/er;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/appcompat/view/menu/ar;

    invoke-direct {v2, p1, p2}, Landroidx/appcompat/view/menu/ar;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/jz0;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/er;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/appcompat/view/menu/br;

    invoke-direct {v3, p1, p2, v1}, Landroidx/appcompat/view/menu/br;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/zy0;->g(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method
