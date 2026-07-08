.class public abstract Landroidx/appcompat/view/menu/dp;
.super Landroidx/appcompat/view/menu/bp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract O()Ljava/lang/Thread;
.end method

.method public final P()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dp;->O()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/w;->a()Landroidx/appcompat/view/menu/v;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
