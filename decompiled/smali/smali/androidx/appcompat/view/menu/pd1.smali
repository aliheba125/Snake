.class public final synthetic Landroidx/appcompat/view/menu/pd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/no0;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/lz0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/lz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/pd1;->a:Landroidx/appcompat/view/menu/lz0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pd1;->a:Landroidx/appcompat/view/menu/lz0;

    check-cast p1, Landroidx/appcompat/view/menu/xd1;

    check-cast p2, Landroidx/appcompat/view/menu/bz0;

    sget-object v1, Landroidx/appcompat/view/menu/ud1;->k:Landroidx/appcompat/view/menu/m2$g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/z7;->D()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/hd1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/hd1;->u2(Landroidx/appcompat/view/menu/lz0;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/bz0;->c(Ljava/lang/Object;)V

    return-void
.end method
