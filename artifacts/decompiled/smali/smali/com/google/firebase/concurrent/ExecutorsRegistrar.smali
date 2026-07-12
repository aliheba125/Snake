.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/j80;

.field public static final b:Landroidx/appcompat/view/menu/j80;

.field public static final c:Landroidx/appcompat/view/menu/j80;

.field public static final d:Landroidx/appcompat/view/menu/j80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/j80;

    new-instance v1, Landroidx/appcompat/view/menu/yp;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/yp;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/j80;-><init>(Landroidx/appcompat/view/menu/el0;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Landroidx/appcompat/view/menu/j80;

    new-instance v0, Landroidx/appcompat/view/menu/j80;

    new-instance v1, Landroidx/appcompat/view/menu/zp;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/zp;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/j80;-><init>(Landroidx/appcompat/view/menu/el0;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Landroidx/appcompat/view/menu/j80;

    new-instance v0, Landroidx/appcompat/view/menu/j80;

    new-instance v1, Landroidx/appcompat/view/menu/aq;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/aq;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/j80;-><init>(Landroidx/appcompat/view/menu/el0;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Landroidx/appcompat/view/menu/j80;

    new-instance v0, Landroidx/appcompat/view/menu/j80;

    new-instance v1, Landroidx/appcompat/view/menu/bq;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/bq;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/j80;-><init>(Landroidx/appcompat/view/menu/el0;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Landroidx/appcompat/view/menu/j80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->m(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->r()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->q()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->o(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->n(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->l(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static i()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ki;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/ki;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ki;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/ki;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public static synthetic l(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Landroidx/appcompat/view/menu/j80;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j80;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic m(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Landroidx/appcompat/view/menu/j80;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j80;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic n(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Landroidx/appcompat/view/menu/j80;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j80;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic o(Landroidx/appcompat/view/menu/xd;)Ljava/util/concurrent/Executor;
    .locals 0

    sget-object p0, Landroidx/appcompat/view/menu/e31;->m:Landroidx/appcompat/view/menu/e31;

    return-object p0
.end method

.method public static synthetic p()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    const/16 v0, 0xa

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->i()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const-string v2, "Firebase Background"

    invoke-static {v2, v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->t()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const-string v3, "Firebase Lite"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-string v0, "Firebase Blocking"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-string v0, "Firebase Scheduler"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static t()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/fl;

    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Landroidx/appcompat/view/menu/j80;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/j80;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/fl;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7

    const-class v0, Landroidx/appcompat/view/menu/u7;

    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v4

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-static {v0, v5}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    filled-new-array {v4, v0}, [Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/appcompat/view/menu/ud;->d(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/menu/cq;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/cq;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    const-class v2, Landroidx/appcompat/view/menu/k8;

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v4

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v2

    filled-new-array {v6, v2}, [Landroidx/appcompat/view/menu/ul0;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/appcompat/view/menu/ud;->d(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v2

    new-instance v4, Landroidx/appcompat/view/menu/dq;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/dq;-><init>()V

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v2

    const-class v4, Landroidx/appcompat/view/menu/c90;

    invoke-static {v4, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v1

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v3

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v4

    filled-new-array {v3, v4}, [Landroidx/appcompat/view/menu/ul0;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/ud;->d(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    new-instance v3, Landroidx/appcompat/view/menu/eq;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/eq;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v1

    const-class v3, Landroidx/appcompat/view/menu/f31;

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/ud;->c(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v3

    new-instance v4, Landroidx/appcompat/view/menu/fq;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/fq;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v3

    filled-new-array {v0, v2, v1, v3}, [Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
