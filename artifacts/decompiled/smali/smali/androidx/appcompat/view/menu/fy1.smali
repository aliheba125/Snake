.class public final Landroidx/appcompat/view/menu/fy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic b:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/fy1;->b:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/fy1;->a:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/fy1;->b:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    new-instance v0, Landroidx/appcompat/view/menu/hg1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/fy1;->b:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/fy1;->a:Landroidx/appcompat/view/menu/cb2;

    iget-object v2, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/o82;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hg1;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
