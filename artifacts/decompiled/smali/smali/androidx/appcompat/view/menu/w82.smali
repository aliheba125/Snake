.class public final Landroidx/appcompat/view/menu/w82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic b:Landroidx/appcompat/view/menu/o82;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w82;->b:Landroidx/appcompat/view/menu/o82;

    iput-object p2, p0, Landroidx/appcompat/view/menu/w82;->a:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/w82;->b:Landroidx/appcompat/view/menu/o82;

    iget-object v1, p0, Landroidx/appcompat/view/menu/w82;->a:Landroidx/appcompat/view/menu/cb2;

    iget-object v1, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/w82;->a:Landroidx/appcompat/view/menu/cb2;

    iget-object v0, v0, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/lz1;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w82;->b:Landroidx/appcompat/view/menu/o82;

    iget-object v2, p0, Landroidx/appcompat/view/menu/w82;->a:Landroidx/appcompat/view/menu/cb2;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "App info was null when attempting to get app instance id"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Analytics storage consent denied. Returning null app instance id"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1
.end method
