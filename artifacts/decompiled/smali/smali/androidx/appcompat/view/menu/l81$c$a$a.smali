.class public Landroidx/appcompat/view/menu/l81$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/l81$c$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/l81;

.field public final synthetic b:Landroidx/appcompat/view/menu/y81;

.field public final synthetic c:Landroidx/appcompat/view/menu/y81;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroidx/appcompat/view/menu/l81$c$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l81$c$a;Landroidx/appcompat/view/menu/l81;Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->f:Landroidx/appcompat/view/menu/l81$c$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->a:Landroidx/appcompat/view/menu/l81;

    iput-object p3, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->b:Landroidx/appcompat/view/menu/y81;

    iput-object p4, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->c:Landroidx/appcompat/view/menu/y81;

    iput p5, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->d:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->a:Landroidx/appcompat/view/menu/l81;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l81;->e(F)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->b:Landroidx/appcompat/view/menu/y81;

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->c:Landroidx/appcompat/view/menu/y81;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->a:Landroidx/appcompat/view/menu/l81;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/l81;->b()F

    move-result v1

    iget v2, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->d:I

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/l81$c;->o(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81;FI)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->a:Landroidx/appcompat/view/menu/l81;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$c$a$a;->e:Landroid/view/View;

    invoke-static {v1, p1, v0}, Landroidx/appcompat/view/menu/l81$c;->k(Landroid/view/View;Landroidx/appcompat/view/menu/y81;Ljava/util/List;)V

    return-void
.end method
