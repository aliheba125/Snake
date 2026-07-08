.class public Landroidx/appcompat/view/menu/lm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/view/menu/mf0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/mf0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/view/menu/lm;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Landroidx/appcompat/view/menu/lm;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lm;->c:Landroidx/appcompat/view/menu/mf0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/lm;->c:Landroidx/appcompat/view/menu/mf0;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf0;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lm;->d()Landroidx/appcompat/view/menu/g40;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/lm;->b:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/lm;->c:Landroidx/appcompat/view/menu/mf0;

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/ed;->e(Landroid/content/Context;Landroidx/appcompat/view/menu/mf0;)Landroidx/appcompat/view/menu/ed$a;

    move-result-object v2

    iget-object v3, v2, Landroidx/appcompat/view/menu/ed$a;->a:Landroidx/appcompat/view/menu/gf0$e;

    invoke-virtual {p0, v3, v0}, Landroidx/appcompat/view/menu/lm;->e(Landroidx/appcompat/view/menu/gf0$e;Landroidx/appcompat/view/menu/g40;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/lm;->c(Landroidx/appcompat/view/menu/ed$a;)V

    return v1
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/lm;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/lm;->b:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_2

    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final c(Landroidx/appcompat/view/menu/ed$a;)V
    .locals 3

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/lm;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Landroidx/appcompat/view/menu/ed$a;->b:Ljava/lang/String;

    iget v2, p1, Landroidx/appcompat/view/menu/ed$a;->c:I

    iget-object p1, p1, Landroidx/appcompat/view/menu/ed$a;->a:Landroidx/appcompat/view/menu/gf0$e;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public final d()Landroidx/appcompat/view/menu/g40;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lm;->c:Landroidx/appcompat/view/menu/mf0;

    const-string v1, "gcm.n.image"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/g40;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/g40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lm;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g40;->j(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-object v0
.end method

.method public final e(Landroidx/appcompat/view/menu/gf0$e;Landroidx/appcompat/view/menu/g40;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g40;->h()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-static {v0, v2, v3, v1}, Landroidx/appcompat/view/menu/jz0;->b(Landroidx/appcompat/view/menu/zy0;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/gf0$e;->o(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$e;

    new-instance v1, Landroidx/appcompat/view/menu/gf0$b;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/gf0$b;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/gf0$b;->i(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/gf0$b;->h(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/gf0$e;->x(Landroidx/appcompat/view/menu/gf0$f;)Landroidx/appcompat/view/menu/gf0$e;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g40;->close()V

    goto :goto_1

    :catch_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g40;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to download image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method
