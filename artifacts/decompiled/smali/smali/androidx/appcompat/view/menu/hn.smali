.class public Landroidx/appcompat/view/menu/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Landroidx/appcompat/view/menu/hn;

.field public static c:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/hn;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/hn;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/hn;->b:Landroidx/appcompat/view/menu/hn;

    const-string v0, "decelerate"

    const-string v1, "linear"

    const-string v2, "standard"

    const-string v3, "accelerate"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/hn;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    iput-object v0, p0, Landroidx/appcompat/view/menu/hn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hn;->a:Ljava/lang/String;

    return-object v0
.end method
