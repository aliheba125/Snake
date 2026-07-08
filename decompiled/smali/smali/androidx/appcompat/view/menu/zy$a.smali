.class public final enum Landroidx/appcompat/view/menu/zy$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/zy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/zy$a;

.field public static final enum o:Landroidx/appcompat/view/menu/zy$a;

.field public static final enum p:Landroidx/appcompat/view/menu/zy$a;

.field public static final enum q:Landroidx/appcompat/view/menu/zy$a;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/zy$a;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/appcompat/view/menu/zy$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/zy$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/zy$a;->n:Landroidx/appcompat/view/menu/zy$a;

    new-instance v1, Landroidx/appcompat/view/menu/zy$a;

    const-string v2, "SDK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroidx/appcompat/view/menu/zy$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/zy$a;->o:Landroidx/appcompat/view/menu/zy$a;

    new-instance v2, Landroidx/appcompat/view/menu/zy$a;

    const-string v3, "GLOBAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Landroidx/appcompat/view/menu/zy$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/appcompat/view/menu/zy$a;->p:Landroidx/appcompat/view/menu/zy$a;

    new-instance v3, Landroidx/appcompat/view/menu/zy$a;

    const-string v4, "COMBINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Landroidx/appcompat/view/menu/zy$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/appcompat/view/menu/zy$a;->q:Landroidx/appcompat/view/menu/zy$a;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/appcompat/view/menu/zy$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/zy$a;->r:[Landroidx/appcompat/view/menu/zy$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/zy$a;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/zy$a;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/zy$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/zy$a;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/zy$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/zy$a;->r:[Landroidx/appcompat/view/menu/zy$a;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/zy$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/zy$a;

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/zy$a;->m:I

    return v0
.end method
