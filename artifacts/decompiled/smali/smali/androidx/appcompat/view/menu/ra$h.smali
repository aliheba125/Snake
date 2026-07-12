.class public Landroidx/appcompat/view/menu/ra$h;
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
.field public final synthetic a:Landroidx/appcompat/view/menu/ra$k;

.field public final synthetic b:Landroidx/appcompat/view/menu/ra;

.field private mViewBounds:Landroidx/appcompat/view/menu/ra$k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ra;Landroidx/appcompat/view/menu/ra$k;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ra$h;->b:Landroidx/appcompat/view/menu/ra;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ra$h;->a:Landroidx/appcompat/view/menu/ra$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/ra$h;->mViewBounds:Landroidx/appcompat/view/menu/ra$k;

    return-void
.end method
