.class public final Landroidx/appcompat/view/menu/dp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/zy0;

.field public final synthetic n:Landroidx/appcompat/view/menu/ir1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ir1;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dp1;->m:Landroidx/appcompat/view/menu/zy0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir1;->e(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/yg;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dp1;->m:Landroidx/appcompat/view/menu/zy0;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/yg;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/zy0;
    :try_end_0
    .catch Landroidx/appcompat/view/menu/cq0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ir1;->d(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/gz0;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/zy0;->e(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/mg0;)Landroidx/appcompat/view/menu/zy0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/zy0;->d(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/ig0;)Landroidx/appcompat/view/menu/zy0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/zy0;->a(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/fg0;)Landroidx/appcompat/view/menu/zy0;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ir1;->f(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ir1;->f(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/dp1;->n:Landroidx/appcompat/view/menu/ir1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ir1;->f(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void
.end method
