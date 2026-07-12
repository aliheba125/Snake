.class public final synthetic Landroidx/appcompat/view/menu/sb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/vb;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/vb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sb;->a:Landroidx/appcompat/view/menu/vb;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sb;->a:Landroidx/appcompat/view/menu/vb;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vb;->x(Landroidx/appcompat/view/menu/vb;Landroid/animation/ValueAnimator;)V

    return-void
.end method
