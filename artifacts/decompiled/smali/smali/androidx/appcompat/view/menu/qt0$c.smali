.class public final enum Landroidx/appcompat/view/menu/qt0$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/qt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/qt0$c;

.field public static final enum o:Landroidx/appcompat/view/menu/qt0$c;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/qt0$c;


# instance fields
.field public m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/qt0$c;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroidx/appcompat/view/menu/qt0$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/qt0$c;->n:Landroidx/appcompat/view/menu/qt0$c;

    new-instance v0, Landroidx/appcompat/view/menu/qt0$c;

    const-string v1, "dark"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/appcompat/view/menu/qt0$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/qt0$c;->o:Landroidx/appcompat/view/menu/qt0$c;

    invoke-static {}, Landroidx/appcompat/view/menu/qt0$c;->c()[Landroidx/appcompat/view/menu/qt0$c;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/qt0$c;->p:[Landroidx/appcompat/view/menu/qt0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/qt0$c;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/qt0$c;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/qt0$c;->n:Landroidx/appcompat/view/menu/qt0$c;

    sget-object v1, Landroidx/appcompat/view/menu/qt0$c;->o:Landroidx/appcompat/view/menu/qt0$c;

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/qt0$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/qt0$c;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/qt0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/qt0$c;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/qt0$c;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qt0$c;->p:[Landroidx/appcompat/view/menu/qt0$c;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/qt0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/qt0$c;

    return-object v0
.end method
