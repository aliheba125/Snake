.class public Landroidx/appcompat/view/menu/qz0$a;
.super Landroidx/appcompat/view/menu/fp0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/qz0;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/sz0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/sz0;

.field public final synthetic b:Landroidx/appcompat/view/menu/qz0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/qz0;Landroidx/appcompat/view/menu/sz0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0$a;->b:Landroidx/appcompat/view/menu/qz0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/qz0$a;->a:Landroidx/appcompat/view/menu/sz0;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/fp0$e;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$a;->b:Landroidx/appcompat/view/menu/qz0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/qz0;->c(Landroidx/appcompat/view/menu/qz0;Z)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$a;->a:Landroidx/appcompat/view/menu/sz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/sz0;->a(I)V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$a;->b:Landroidx/appcompat/view/menu/qz0;

    iget v1, v0, Landroidx/appcompat/view/menu/qz0;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/qz0;->b(Landroidx/appcompat/view/menu/qz0;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0$a;->b:Landroidx/appcompat/view/menu/qz0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/qz0;->c(Landroidx/appcompat/view/menu/qz0;Z)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0$a;->a:Landroidx/appcompat/view/menu/sz0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$a;->b:Landroidx/appcompat/view/menu/qz0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/qz0;->a(Landroidx/appcompat/view/menu/qz0;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/sz0;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
