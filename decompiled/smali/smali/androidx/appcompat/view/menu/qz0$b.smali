.class public Landroidx/appcompat/view/menu/qz0$b;
.super Landroidx/appcompat/view/menu/sz0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/qz0;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Landroidx/appcompat/view/menu/sz0;

.field public final synthetic d:Landroidx/appcompat/view/menu/qz0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/qz0;Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0$b;->d:Landroidx/appcompat/view/menu/qz0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/qz0$b;->a:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/view/menu/qz0$b;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Landroidx/appcompat/view/menu/qz0$b;->c:Landroidx/appcompat/view/menu/sz0;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/sz0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$b;->c:Landroidx/appcompat/view/menu/sz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/sz0;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$b;->d:Landroidx/appcompat/view/menu/qz0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qz0$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/view/menu/qz0$b;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/qz0;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0$b;->c:Landroidx/appcompat/view/menu/sz0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/sz0;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
