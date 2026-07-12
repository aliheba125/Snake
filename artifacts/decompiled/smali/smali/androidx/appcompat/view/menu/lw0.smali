.class public final Landroidx/appcompat/view/menu/lw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xg;
.implements Landroidx/appcompat/view/menu/wh;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/xg;

.field public final n:Landroidx/appcompat/view/menu/kh;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/lw0;->m:Landroidx/appcompat/view/menu/xg;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lw0;->n:Landroidx/appcompat/view/menu/kh;

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/kh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lw0;->n:Landroidx/appcompat/view/menu/kh;

    return-object v0
.end method

.method public g()Landroidx/appcompat/view/menu/wh;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lw0;->m:Landroidx/appcompat/view/menu/xg;

    instance-of v1, v0, Landroidx/appcompat/view/menu/wh;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/wh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lw0;->m:Landroidx/appcompat/view/menu/xg;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method
