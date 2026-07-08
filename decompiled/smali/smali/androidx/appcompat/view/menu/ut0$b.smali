.class public Landroidx/appcompat/view/menu/ut0$b;
.super Landroidx/appcompat/view/menu/ut0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ut0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Landroidx/appcompat/view/menu/ut0$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ut0$d;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ut0$g;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroidx/appcompat/view/menu/rt0;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ut0$d;->h(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v6

    iget-object v0, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ut0$d;->i(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ut0$d;->b(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ut0$d;->c(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v2}, Landroidx/appcompat/view/menu/ut0$d;->d(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/ut0$b;->c:Landroidx/appcompat/view/menu/ut0$d;

    invoke-static {v3}, Landroidx/appcompat/view/menu/ut0$d;->e(Landroidx/appcompat/view/menu/ut0$d;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/view/menu/rt0;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
