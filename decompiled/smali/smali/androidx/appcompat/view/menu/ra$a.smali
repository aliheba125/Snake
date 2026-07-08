.class public Landroidx/appcompat/view/menu/ra$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ra;->q(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/y11;Landroidx/appcompat/view/menu/y11;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/appcompat/view/menu/ra;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ra;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ra$a;->e:Landroidx/appcompat/view/menu/ra;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ra$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ra$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ra$a;->c:Landroid/view/View;

    iput p5, p0, Landroidx/appcompat/view/menu/ra$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ra$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/appcompat/view/menu/n61;->b(Landroid/view/View;)Landroidx/appcompat/view/menu/f61;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ra$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/f61;->d(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ra$a;->c:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/ra$a;->d:F

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/n61;->g(Landroid/view/View;F)V

    return-void
.end method
