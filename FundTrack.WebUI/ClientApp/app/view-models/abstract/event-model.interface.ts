﻿/** for display new events */
export interface IEventModel {
    id: number;
    organizationId: number;
    organizationName: string;
    description: string;
    createDate: Date;
    imageUrl: string;
}