.class public Landroidx/appcompat/view/menu/zv$a;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/zv;->v(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;

.field public final synthetic b:Landroidx/appcompat/view/menu/zv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/zv;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/zv$a;->b:Landroidx/appcompat/view/menu/zv;

    iput-object p2, p0, Landroidx/appcompat/view/menu/zv$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/zv$a;->a:Landroid/graphics/Rect;

    return-object p1
.end method
