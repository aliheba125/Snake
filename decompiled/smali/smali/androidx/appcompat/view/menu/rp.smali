.class public abstract Landroidx/appcompat/view/menu/rp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/hr0;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hr0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
