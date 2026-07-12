.class public final Landroidx/appcompat/view/menu/i01$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/i01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/i01$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/i01$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i01$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/i01$a;->n:Landroidx/appcompat/view/menu/i01$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/appcompat/view/menu/kh$b;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p2, Landroidx/appcompat/view/menu/h01;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    return-object p2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/i01$a;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/kh$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
