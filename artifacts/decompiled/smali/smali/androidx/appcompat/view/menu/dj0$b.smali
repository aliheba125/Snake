.class public Landroidx/appcompat/view/menu/dj0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/dj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/dj0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/dj0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ThreadFactory;Landroidx/appcompat/view/menu/l01;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/dj0$b;->b(ILjava/util/concurrent/ThreadFactory;Landroidx/appcompat/view/menu/l01;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/util/concurrent/ThreadFactory;Landroidx/appcompat/view/menu/l01;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    new-instance p3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p3

    move v1, p1

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {p3}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method
