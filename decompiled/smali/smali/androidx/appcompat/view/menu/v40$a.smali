.class public Landroidx/appcompat/view/menu/v40$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/v40;->S(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroidx/appcompat/view/menu/v40;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/v40;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->e:Landroidx/appcompat/view/menu/v40;

    iput p2, p0, Landroidx/appcompat/view/menu/v40$a;->a:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/v40$a;->b:Landroid/widget/TextView;

    iput p4, p0, Landroidx/appcompat/view/menu/v40$a;->c:I

    iput-object p5, p0, Landroidx/appcompat/view/menu/v40$a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->e:Landroidx/appcompat/view/menu/v40;

    iget v0, p0, Landroidx/appcompat/view/menu/v40$a;->a:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v40;->a(Landroidx/appcompat/view/menu/v40;I)I

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->e:Landroidx/appcompat/view/menu/v40;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v40;->b(Landroidx/appcompat/view/menu/v40;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Landroidx/appcompat/view/menu/v40$a;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->e:Landroidx/appcompat/view/menu/v40;

    invoke-static {p1}, Landroidx/appcompat/view/menu/v40;->c(Landroidx/appcompat/view/menu/v40;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->e:Landroidx/appcompat/view/menu/v40;

    invoke-static {p1}, Landroidx/appcompat/view/menu/v40;->c(Landroidx/appcompat/view/menu/v40;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->d:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/v40$a;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
