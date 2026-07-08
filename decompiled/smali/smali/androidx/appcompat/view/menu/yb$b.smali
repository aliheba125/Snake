.class public final enum Landroidx/appcompat/view/menu/yb$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/yb$b;

.field public static final enum o:Landroidx/appcompat/view/menu/yb$b;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/yb$b;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/yb$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/yb$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/yb$b;->n:Landroidx/appcompat/view/menu/yb$b;

    new-instance v1, Landroidx/appcompat/view/menu/yb$b;

    const/4 v2, 0x1

    const/16 v3, 0x17

    const-string v4, "ANDROID_FIREBASE"

    invoke-direct {v1, v4, v2, v3}, Landroidx/appcompat/view/menu/yb$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/yb$b;->o:Landroidx/appcompat/view/menu/yb$b;

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/yb$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/yb$b;->p:[Landroidx/appcompat/view/menu/yb$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/yb$b;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/yb$b;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/yb$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/yb$b;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/yb$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/yb$b;->p:[Landroidx/appcompat/view/menu/yb$b;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/yb$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/yb$b;

    return-object v0
.end method
