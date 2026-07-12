.class public Landroidx/appcompat/view/menu/is0;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wh;


# instance fields
.field public final p:Landroidx/appcompat/view/menu/xg;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xg;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/kh;ZZ)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/is0;->p:Landroidx/appcompat/view/menu/xg;

    return-void
.end method


# virtual methods
.method public H0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/is0;->p:Landroidx/appcompat/view/menu/xg;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/rd;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/is0;->p:Landroidx/appcompat/view/menu/xg;

    invoke-static {v0}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/is0;->p:Landroidx/appcompat/view/menu/xg;

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/rd;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Landroidx/appcompat/view/menu/cm;->c(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V

    return-void
.end method

.method public final g()Landroidx/appcompat/view/menu/wh;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/is0;->p:Landroidx/appcompat/view/menu/xg;

    instance-of v1, v0, Landroidx/appcompat/view/menu/wh;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/wh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
