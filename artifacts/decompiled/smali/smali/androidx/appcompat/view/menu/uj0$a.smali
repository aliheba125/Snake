.class public Landroidx/appcompat/view/menu/uj0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/uj0;->F(Landroidx/appcompat/view/menu/yv0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/uj0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/uj0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/uj0$a;->m:Landroidx/appcompat/view/menu/uj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;)I
    .locals 0

    iget p1, p1, Landroidx/appcompat/view/menu/yv0;->c:I

    iget p2, p2, Landroidx/appcompat/view/menu/yv0;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/yv0;

    check-cast p2, Landroidx/appcompat/view/menu/yv0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/uj0$a;->a(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;)I

    move-result p1

    return p1
.end method
