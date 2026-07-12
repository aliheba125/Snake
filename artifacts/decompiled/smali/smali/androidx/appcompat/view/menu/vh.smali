.class public final enum Landroidx/appcompat/view/menu/vh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/vh;

.field public static final enum n:Landroidx/appcompat/view/menu/vh;

.field public static final enum o:Landroidx/appcompat/view/menu/vh;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/vh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/vh;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/vh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/vh;->m:Landroidx/appcompat/view/menu/vh;

    new-instance v0, Landroidx/appcompat/view/menu/vh;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/vh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/vh;->n:Landroidx/appcompat/view/menu/vh;

    new-instance v0, Landroidx/appcompat/view/menu/vh;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/vh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/vh;->o:Landroidx/appcompat/view/menu/vh;

    invoke-static {}, Landroidx/appcompat/view/menu/vh;->c()[Landroidx/appcompat/view/menu/vh;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/vh;->p:[Landroidx/appcompat/view/menu/vh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/appcompat/view/menu/vh;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/vh;->m:Landroidx/appcompat/view/menu/vh;

    sget-object v1, Landroidx/appcompat/view/menu/vh;->n:Landroidx/appcompat/view/menu/vh;

    sget-object v2, Landroidx/appcompat/view/menu/vh;->o:Landroidx/appcompat/view/menu/vh;

    filled-new-array {v0, v1, v2}, [Landroidx/appcompat/view/menu/vh;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/vh;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/vh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/vh;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/vh;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/vh;->p:[Landroidx/appcompat/view/menu/vh;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/vh;

    return-object v0
.end method
