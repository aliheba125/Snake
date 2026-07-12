.class public final Landroidx/appcompat/view/menu/ek1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/zy0;

.field public final synthetic n:Landroidx/appcompat/view/menu/rm1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/rm1;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ek1;->m:Landroidx/appcompat/view/menu/zy0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ek1;->m:Landroidx/appcompat/view/menu/zy0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zy0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/rm1;->c(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nf2;->q()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/rm1;->a(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/yg;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ek1;->m:Landroidx/appcompat/view/menu/zy0;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/yg;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroidx/appcompat/view/menu/cq0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/rm1;->c(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->p(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/rm1;->c(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/rm1;->c(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/ek1;->n:Landroidx/appcompat/view/menu/rm1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/rm1;->c(Landroidx/appcompat/view/menu/rm1;)Landroidx/appcompat/view/menu/nf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void
.end method
