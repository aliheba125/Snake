.class public final Landroidx/appcompat/view/menu/po0;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/po0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/qo0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/qo0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/po0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/po0;->m:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/qo0;->c(Landroidx/appcompat/view/menu/po0;Landroid/os/Parcel;I)V

    return-void
.end method
