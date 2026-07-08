.class public final Landroidx/appcompat/view/menu/wz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/lt1;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/cx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/yz1;Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/wz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/wz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/wz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
