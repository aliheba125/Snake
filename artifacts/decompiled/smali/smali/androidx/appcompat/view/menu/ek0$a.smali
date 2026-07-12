.class public final Landroidx/appcompat/view/menu/ek0$a;
.super Landroidx/appcompat/view/menu/zg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ek0;->a(Landroidx/appcompat/view/menu/gk0;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/zg;-><init>(Landroidx/appcompat/view/menu/xg;)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ek0$a;->r:Ljava/lang/Object;

    iget p1, p0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Landroidx/appcompat/view/menu/ek0;->a(Landroidx/appcompat/view/menu/gk0;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
