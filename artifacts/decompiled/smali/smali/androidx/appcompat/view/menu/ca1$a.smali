.class public final Landroidx/appcompat/view/menu/ca1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ca1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Landroidx/appcompat/view/menu/ca1$a;

.field public static b:Landroidx/appcompat/view/menu/fw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ca1$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ca1$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ca1$a;->a:Landroidx/appcompat/view/menu/ca1$a;

    sget-object v0, Landroidx/appcompat/view/menu/ca1$a$a;->n:Landroidx/appcompat/view/menu/ca1$a$a;

    sput-object v0, Landroidx/appcompat/view/menu/ca1$a;->b:Landroidx/appcompat/view/menu/fw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/ca1;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ca1$a;->b:Landroidx/appcompat/view/menu/fw;

    sget-object v1, Landroidx/appcompat/view/menu/da1;->b:Landroidx/appcompat/view/menu/da1;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ca1;

    return-object v0
.end method
