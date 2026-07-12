.class public Landroidx/appcompat/view/menu/vb$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/vb;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/vb;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/vb;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/vb$b;->a:Landroidx/appcompat/view/menu/vb;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb$b;->a:Landroidx/appcompat/view/menu/vb;

    iget-object p1, p1, Landroidx/appcompat/view/menu/oo;->b:Lcom/google/android/material/textfield/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/a;->a0(Z)V

    return-void
.end method
